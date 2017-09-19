# 20. JSONデータの読み込み
# Wikipedia記事のJSONファイルを読み込み，
# 「イギリス」に関する記事本文を表示せよ．
# 問題21-29では，ここで抽出した記事本文に対して実行せよ．

require 'json'

json = nil
File.open('country.json', 'r') do |file|
  file.each_line do |line|
    json = JSON.load(line)
    if json["title"] == "イギリス" 
      puts json["text"]
    end
  end
end

