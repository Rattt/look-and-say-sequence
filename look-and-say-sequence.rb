 
class String

  def look_and_say
    gsub(/(.)\1*/){|s| s.size.to_s + s[0]}
  end

  def is_i?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end

end
 
value = '1'
puts 'Ввведите число, количество последовательностей Джона Конвея'
INPUT_VALUE = gets.chomp


begin
raise TypeError unless INPUT_VALUE.is_i?

  NUMBER_REPETITIONS = INPUT_VALUE.to_i
  NUMBER_REPETITIONS.times {puts value; value = value.look_and_say}  

rescue  TypeError => error
  puts "Не является числом"
end





