
class President
  def initialize (presidency, name)
    @presidency = presidency
    @name = name
  end
  def name
    @name
  end

  def presidency
    @presidency
  end

  def to_s
    "Presidency: #{@presidency} Name: #{@name}"
  end
end

file = File.new('infile.csv', 'r')
lines = file.readlines

headers = lines.shift.strip
keys = headers.split(',')
presidents = []
lines.each do |line|
  values = line.strip.split(',')

  p = President.new(values[0], values[1])

  presidents << p.to_s
end

puts 'Presidents:'
puts presidents


