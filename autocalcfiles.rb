require 'roo'
require 'json'

a={}
Dir.glob('excel/*.xlsx') do |d|
  puts d
  #puts xlsx.info
  xlsx = Roo::Excelx.new(d)
  s= xlsx.cell(15, 'G')
  a[d]=s
end
sum= a.values.inject(:+)
a["total"]=sum
File.open("meibo.json","w") {|file| 
  file.puts a.to_json
}

