# letters = %w[a b c]
# letters.each do |letter|
#   define_method letter.to_sym do
#     puts "hello from #{letter}"
#   end
# end
# p a

# def testspargs(*args)
#   zipper=[1,2,3,4,5]
#   args.each do |arg|
#     p arg
#     #p args.length
#     #p zipper[0...args.length]
#   end
#   p "2 #{args.length} used"
#   zipper[0...args.length].zip(args)
# end
# p testspargs('a', 'b', 'c', 'd')
# p 'set args=> 3'
# p [1,2,3].zip(%w[a b c])

# require 'csv'
# require './rental'

# $data = CSV.read('./data.csv')

class Rental
  # def self.method_name
  #   def method_name
  #   end
  # end
  class << self
    def define_getters(attributes)
      attributes.each do |attribute|
        define_method attribute.to_sym do
          return instacnce_variable_get("@#{attribute}")
        end
      end

    end

    def define_initialize(attributes)
      define_method(:initialize) do |*args|
        attributes.zip(args) do |attribute, value|
          instance_variable_get("@#{attribute}", value)
        end
      end
    end


  end

end
