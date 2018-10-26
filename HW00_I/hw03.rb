# 6. *Разработайте программу, которая подсчитывает 
# количество файлов с расширением .rb в текущей папке, 
# включая все вложенные подпапки.

puts "###Задание №6###"
directory = Dir.pwd
counter = Dir[File.join(directory, '**', '*')].count { |files| File.extname(files) == '.rb' }
puts "We found #{counter}.rb files in current directory"

# 7. *Строку 'Hello world!' преобразуйте 
# в ["H", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]. 
# Выражение преобразования должно быть однострочным.

puts "###Задание №7###"
string = "Hello world!"
puts "Symbols array: #{string = string.chars}"