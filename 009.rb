# 09. Typoglycemia
# スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，
# それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．
# ただし，長さが４以下の単語は並び替えないこととする．
# 適当な英語の文
# （例えば
# "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
# ）
# を与え，その実行結果を確認せよ．

str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

str_arr = str.split(" ")

str_arr.map! do |s|
    if s.length <= 4
        s = s
    else
        s = s[0] + s.chars.slice(1, s.length-2).shuffle.join() +  s[-1]
    end
end

puts str_arr