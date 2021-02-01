require 'roo'
require 'json'
xlsx = Roo::Excelx.new('./excel/01.xlsx')

puts xlsx.info
a= xlsx.cell(15, 'G')
File.open("json/meibo.json","w") {|file| 
  file.puts a
}

