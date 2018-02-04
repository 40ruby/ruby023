#!/usr/bin/env ruby

def test_thread
    a = 0
    t1 = Thread.new do
        sleep 2
        a = 5
    end
    t1.join # スレッドの終了を待つ
    return a
end
