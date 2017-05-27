# 04. 元素記号
# "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
# という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は
# 先頭の1文字，それ以外の単語は先頭に2文字を取り出し，
# 取り出した文字列から単語の位置（先頭から何番目の単語か）への
# 連想配列（辞書型もしくはマップ型）を作成せよ．


str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

list = [1,5,6,7,8,9,15,16,19]

str_arr = str.split(" ")

dict = {}

str_arr.each.with_index do |s, i|
    if list.include?(i+1)
        dict[s[0]] = i+1
    else 
        dict[s.slice(0,2)] = i+1
    end
end

puts dict