#!/usr/bin/env ruby

# ThreadsWait が使いたくて
require 'thwait'

# スレッドの実行前に、ひとまず "100" と定義しておく
a = 100
threads = []

puts "実行前-親スレッド = #{a}"

# 5つのスレッドを起動し、各々で、変数"a"の状態を変更してみる
5.times { |i|
    threads << Thread.new do
        a = i
        puts "子スレッド = #{a}"
    end
}

# 全てのスレッドの終了を待つ...
ThreadsWait.all_waits(*threads)

# さて、実行後、変数"a" はどうなったか？
puts "実行後-親スレッド = #{a}"