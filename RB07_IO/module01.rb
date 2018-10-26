#fileworks
# f = File.new('data.out', 'w')
# f.puts ('Цена билета: 1000')
# f.close

# f = file.new('data.out', 'a')
# f.puts 'Date is: 2018.10.26'
# f.close

# File.open('tickets.txt') do |f| end

#Построчный обход файла
File.open('tickets.txt') do |f| 
    while record = f.gets
    key, value = record.chomp.split(':')
    puts "#{key} => #{value}"
end
end
#
puts "#####"
#С использованием each
File.open('tickets.txt') do |f| 
    f.each do |record|
    key, value = record.chomp.split(':')
    puts "#{key} => #{value}"
end
end