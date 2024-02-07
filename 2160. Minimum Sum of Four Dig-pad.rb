p data = (1..6).to_a

data.each do |datum|
  # ...
end if data == 5


class Font
  def initialize(name)
    @name = name
  end

  def register
    # Logic to register the font
    puts "Registering #{@name} font..."
  end
end
font1 = Font.new("Arial")
font2 = Font.new("Times New Roman")

thefonts = [font1, font2]

thefonts.each(&:register)
# ...is the same as:
thefonts.each { |font| font.register }

#ADD AUTO-ADD
class Fontx
  @@fonts = []  # Class-level array to store all font objects

  attr_reader :name

  def initialize(name)
    @name = name
    @@fonts << self  # Add the new font object to the @@fonts array
  end

  # Class method to access the fonts collection
  def self.fonts
    @@fonts
  end
end

font_1 = Fontx.new("Arialz")
font_2 = Fontx.new("Times New Roman")
p Fontx.fonts

p Fontx.fonts.map(&:name)
p '--'

p Fontx.fonts.map(&:name).select { |name| name.length == 6 }
p Fontx.fonts.map(&:name).map(&:length)


#*****
wordz = %w[sum jum kiya joker]

p wordz.each(&:length)

# ...is the same as:
p wordz.each { |font| font.length }