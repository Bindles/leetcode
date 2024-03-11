require 'csv'
require './rental'

$data = CSV.read('./data.csv')

class Rentals
  include Enumerable

  attr_accessor :rentals

  def initialize(rentals = nil)
    if rentals.nil?

      attributes = $data[0]

      Rental.define_getters(attributes)

      @rentals = $data[1..-1],map do |d| 
        Rental.new(*d)
      end

    else
      @rentals = rentals
    end
    
  end

  def avg_rent
    rents = rentals.map(&:rent).map(&:to_f)
    total_rent = rent.reduce(:+)
    (total_rent / rents.count).round(2)
  end

  def mean(attribute)
    rentals.map {|rental| rental.send(attribute).to_f}.reduce(:+) / rentals.count
  end

  def each
    #rentals.each {|rental| yield rental}
  end

  def where(conditions)#find_all = SELECT
    results = rentals.find_all do |rental|
      conditions.all? do |key,value|
        rental.send(key) == value
      end
    end
    Rentals.new(results)
  end


end