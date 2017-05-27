# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）から
# n-gramを作る関数を作成せよ．この関数を用い，"I am an NLPer"という文から単語bi-gram，
# 文字bi-gramを得よ．

sample = "I am an NLPer"

def ngram(n, list)
    join = " "
    if list.is_a?(String)
        list = list.chars
        join = ""
    end
    new_list = []
    list.each.with_index do |v, i|
        new_list.push(list.slice(i,n).join(join)) unless i >= list.length+1-n
    end
    return new_list
end

puts ngram(3, sample)
puts ngram(3, sample.split(" "))