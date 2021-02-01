#rooを使ってExcelで作成された伝票の合計値を算出します。
require 'roo'
require 'json'
xlsx = Roo::Excelx.new('./excel/01.xlsx')

puts xlsx.info

#伝票の合計値です　一申請あたり1つの値を全ファイルに対して処理して合計を取ります。
a= xlsx.cell(15, 'G')

#ロジックを調整してください
File.open("json/meibo.json","w") {|file| 
  file.puts a
}

#ロジックを調整してください
File.open("json/soukin.json","w") {|file| 
  file.puts a
}

