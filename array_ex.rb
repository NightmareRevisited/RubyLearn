#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

# @author: NightmareRevisited
# @project: RubyWorkspace
# @file: ArrayEx
# @time: 2020/1/8 21:00
# @Software: RubyMine

# ruby中数组为容器序列
a = [1, 2, '3', 'abc', [1, 2], 1]

# 直接puts数组会对数组中每个元素迭代使用puts
puts a, "\n"

# 两个数组相加 直接将后续数组元素追加至第一个数组中
b = a + ['test'] + [1]
# 两个数组相减 从被减数组中移除全部减去数组中出现的元素
c = a - [1, 3, [1, 2]]

puts 'b', b, "\n"
puts 'c', c, "\n"

# 使用 << 符号向数组中追加元素，类似于python的append方法
a << 1
puts 'a', a, "\n"
# 但是 << 与 append 不同的地方在于， append作为右值时返回值为None，而 << 作为右值时会将追加元素后的数组赋给左值
d = a << 2
puts 'd', d, "\n"


a = [1, '2', 'a', [1, 2]]
# ruby数组乘法和其他语言乘法几乎一样
a * 2
b = a * 2
# 不同的地方在于，如果数组与字符串相乘发生数组的字符串拼接，效果等同于python的str.join(list)，如果数组中存在可迭代对象同样会对可迭代对象进行拼接，拼接过程会有隐式转换
c = a * '3'

puts 'a', a, "\n"
puts 'b', b, "\n"
puts 'c', c, "\n"

# 数组的交集并集操作与其他语言相通
a = [1, 2]
b = [2, 3]
c = [3, 4]

puts a | b, "\n"
puts a & b, "\n"
puts a | c, "\n"
puts a & c, "\n"