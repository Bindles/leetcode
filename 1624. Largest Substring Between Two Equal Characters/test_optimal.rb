def mmm(s="abca")
  s.chars.uniq.map{ ~s.index(_1)+s.rindex(_1) }.max
end
p mmm
def mm(s="abca") =
s.chars.uniq.map{ ~s.index(_1)+s.rindex(_1) }.max

p mm


def mmmm(s="abca") s.chars.map{s[/(#{_1}).*\1/]&.size||1}.max-2 end

  p mmmm


  def mmmmm(s="abca") 
    (s = s.bytes)
        .size
        .times
        .group_by { s[_1] }
        .map { _2.size < 2 ? -1 : _2.last - _2.first - 1 }
        .max 
  end

        p mmmmm

    def mmmmmm(s="abca") 
    (s = s.bytes).size.times.group_by { s[_1] }.map { _2.size < 2 ? -1 : _2.last - _2.first - 1 }.max end

    p mmmmmm

def max_length_between_equal_characters(s = "abca")
  p (s_bytes = s.bytes).size.times.group_by { |index| s_bytes[index] }.map { |_, indices| indices.size < 2 ? -1 : indices.last - indices.first - 1 }.max
end

p max_length_between_equal_characters