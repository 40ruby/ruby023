#!/usr/bin/env ruby

# ThreadsWait を使うため
require 'thwait'
threads = []

# 与えられたブロックをスレッド化する
def threaded
    Thread.new do
        yield
    end
end

# 0〜5秒まってから数値を表示する
# スレッドで実行されるので、順次実行にはならないはず
5.times do |i|
    threads << threaded {
        sleep rand(5)
        puts i
    }
end

# 全てのスレッドの終了を待つ
ThreadsWait.all_waits(*threads)