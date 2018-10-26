# 8. *Со страницы документации, посвященной классу String 
# языка Ruby 
# (например, http://ruby-doc.org/core-2.4.2/String.html) 
# извлеките список методов. 
# Сохраните полученный список в файл string.txt.

puts "###Задание №8###"

require 'open-uri'
require 'nokogiri'
require 'json'

puts "Start.."
url = 'http://ruby-doc.org/core-2.4.2/String.html'
html = open(url)
doc = Nokogiri::HTML(html)

puts "Create.."
strings = doc.css('[id="method-list-section"]').map do |x|
  items = x.css('.link-list li a').map(&:children)
  { methods:  items}
end

f = File.new('string.txt', 'w')
f.puts JSON.pretty_generate(strings)
f.close
puts "End."