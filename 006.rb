# 06. 集合
# "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，
# それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
# さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．

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

s1 = "paraparaparadise"
s2 = "paragraph"

a1 = ngram(2, s1).uniq
a2 = ngram(2, s2).uniq

puts s1
p a1
puts s2
p a2

puts "積集合"
p a1 & a2
puts "和集合"
p a1 | a2
puts "差集合"
p a1 - a2
p a2 - a1

if a1.include?('se')
    puts "a1 includes 'se'"
else
    puts "a1 does'nt include 'se'"
end

if a2.include?('se')
    puts "a2 includes 'se'"
else
    puts "a2 doesn't include 'se'"
end

