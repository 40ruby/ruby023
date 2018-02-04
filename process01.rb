#!/usr/bin/env ruby

a = Process.pid
puts "実行前-親プロセス = #{a}"

5.times do 
    fork do
        a = Process.pid
        puts "子プロセス = #{a}"
    end
end

5.times do
    Process.wait
end

puts "実行後-親プロセス = #{a}"