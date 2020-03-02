use_bpm 125
first_and_last_array=[:a4, :e4, :b3,:a4, :e4, :b3, :a4, :e4, :b3,:a4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3]

f=0

define :part_one do |n1, n2, n3, n4|
  play n1
  sleep 0.3333333
  play n2
  sleep 0.3333333
  play n3
  sleep 0.3333333
  play n4
  sleep 3
end

a=2

define :part_end do |n1, n2, n3, n4|
  play n1, amp: a
  sleep 0.5
  play n2, amp: a
  sleep 0.5
  play n3, amp: a
  sleep 0.5
  play n4, amp: a
  sleep 3
end

define :part_two do |n1, n2, n3, n4|
  play n1
  sleep 1
  play n2
  sleep 1
  play n3
  sleep 1
  play n4
  sleep 1
end

define :part_two_beat do |n1|
  play n1
  sleep 4
end

define :beat_assist_one do |n1, n2, n3, n4|
  play n1
  sleep 1
  play n2
  sleep 1
  play n3
  sleep 1
  play n4
  sleep 1
end

define :beat_assist_two do |n1, n2, n3|
  play n1
  sleep 3
  play n2
  sleep 0.5
  play n3
  sleep 0.5
end

define :beat_assist_three do |n1, n2|
  play n1
  sleep 3
  play n2
  sleep 1
end

define :beat_assist_four do |n1, n2|
  play n1
  sleep 2
  play n2
  sleep 2
end

define :part_three_beat do |n1, n2|
  play n1
  sleep 1.5
  play n1
  sleep 1.5
end

define :title_three do |n1, n2, n3, n4|
  play n1
  sleep 1
  play n2
  sleep 0.5
  play n3
  sleep 1
  play n4
  sleep 0.5
end

define :title_three_function do
  title_three :a4, :a3, :g4, :a3
  title_three :f4, :a3, :e4, :a3
end

define :title_three_final do |n1, n2, n3|
  play n1
  sleep 0.5
  play n2
  sleep 0.5
  play n3
  sleep 0.5
end

define :title_three_final_function do
  title_three_final :a4, :e4, :b3
  title_three_final :a4, :e4, :b3
end

define :title_three_final_function2 do
  title_three_final :ab4, :e4, :b3
  title_three_final :ab4, :e4, :b3
end


live_loop:title_one do
  2.times do
    part_one :d4, :d4, :d4, :d4
    part_one :bb4, :bb4, :bb4, :bb4
    part_one :f4, :f4, :f4, :f4
    sleep 4
    part_one :d4, :d4, :d4, :d4
    part_one :c5, :c5, :c5, :c5
    part_one :bb4, :bb4, :bb4, :bb4
    sleep 4
  end
  stop
end

16.times do
  play:a2
  sleep 4
end

live_loop:title_two do
  8.times do
    part_two :a4, :a3, :g4, :a3
    part_two :gb4, :a3, :e4, :a3
    part_two :g4, :a3, :gb4, :a3
    part_two :e4, :a3, :d4, :a3
  end
  stop
end

2.times do
  part_two_beat :d4
  part_two_beat :c5
  part_two_beat :b4
  part_two_beat :bb4
  part_two_beat :gb4
  part_two_beat :c5
  part_two_beat :bb4
  part_two_beat :g4
end

live_loop :beat2 do
  1.times do
    part_two_beat :d2
    part_two_beat :c4
    part_two_beat :b3
    part_two_beat :bb3
    part_two_beat :fs3
    part_two_beat :c4
    part_two_beat :bb3
    part_two_beat :g3
    part_two_beat :d3
    part_two_beat :c4
    part_two_beat :b3
    part_two_beat :bb3
    part_two_beat :fs3
    part_two_beat :c4
    part_two_beat :bb3
    part_two_beat :g3
  end
  stop
end

beat_assist_one :d2, :e2, :gb2, :g2
beat_assist_one :d3, :e3, :fs3, :g3
beat_assist_two :a3, :g3, :fs3
beat_assist_two :g3, :fs3, :e3
beat_assist_three :d3, :a3
part_two_beat :d4
beat_assist_four :bb3, :a3
beat_assist_four :g3, :fs3
beat_assist_three :e3, :fs3
beat_assist_three :a3, :d4
beat_assist_three :e3, :gb3
part_two_beat :e3
beat_assist_four :a2, :b2
beat_assist_four :d3, :e3
beat_assist_three :d3, :bb2
part_two_beat :g2

live_loop :beat3 do
  1.times do
    part_three_beat :d3, :fs3
    part_three_beat :a3, :d4
    part_three_beat :c3, :f3
    part_three_beat :c4, :a3
    part_three_beat :eb3, :g3
    part_three_beat :d4, :bb3
    part_three_beat :a3, :e3
    part_three_beat :b2, :e3
    part_three_beat :ab3, :e3
    part_three_beat :b2, :e3
  end
  stop
end

title_three :a4, :a3, :g4, :a3
title_three :gb4, :a3, :e4, :a3
title_three_function
title_three_function

24.times do
  play first_and_last_array [f]
  sleep 0.5
  f=f+1
end

3.times do
  part_end :d2, :d2, :d2, :d2
end

live_loop :done do
  11.times do
    part_end :d2, :d2, :d2, :d2
    a = a-0.2
  end
  stop
end