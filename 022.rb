# 22. カテゴリ名の抽出
# 記事のカテゴリ名を（行単位ではなく名前で）抽出せよ．

File.open("igirisu.txt", "r") do |file|
  file.each_line do |line|
    line =~ /^\[\[Category:(.*?)(\|.*)*\]\]$/
    puts $1 if !$1.nil?
  end
end
