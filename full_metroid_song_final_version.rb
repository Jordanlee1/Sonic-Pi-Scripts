intro="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/kraid_lair_intro.wav"
ko="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/samus_star_ko.wav"
back="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/background.wav"
fanfare="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/fanfare.wav"
print sample_duration intro
print sample_duration ko
print sample_duration back
print sample_duration fanfare
first_song_array=[:a4, :e4, :b3,:a4, :e4, :b3, :a4, :e4, :b3,:a4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3, :ab4, :e4, :b3]
f=0
x=1.2
a=2.5
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
sample fanfare, amp: x
sleep 8.2
#part 1----------------------------------------
use_bpm 125
live_loop:title_one do
  part_one :d4, :d4, :d4, :d4
  part_one :bb4, :bb4, :bb4, :bb4
  part_one :f4, :f4, :f4, :f4
  sleep 4
  part_one :d4, :d4, :d4, :d4
  part_one :c5, :c5, :c5, :c5
  part_one :bb4, :bb4, :bb4, :bb4
  sleep 4
  stop
end
8.times do
  play:a2
  sleep 4
end
#part 2----------------------------------------
live_loop:title_two do
  5.times do
    part_two :a4, :a3, :g4, :a3
    part_two :gb4, :a3, :e4, :a3
    part_two :g4, :a3, :gb4, :a3
    part_two :e4, :a3, :d4, :a3
  end
  stop
end
part_two_beat :d4
part_two_beat :c5
part_two_beat :b4
part_two_beat :bb4
#part 3----------------------------------------
live_loop :beat2 do
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
#part 4----------------------------------------
live_loop :beat3 do
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
  stop
end
title_three :a4, :a3, :g4, :a3
title_three :gb4, :a3, :e4, :a3
title_three_function
title_three_function
24.times do
  play first_song_array [f]
  sleep 0.5
  f=f+1
end
#part 5----------------------------------------
part_end :d2, :d2, :d2, :d2
live_loop :done do
  part_end :d2, :d2, :d2, :d2
  a = a-0.5
  if a == 0
    stop
  end
end
#Second song intro and parameterizied functions----------------------------------------
use_bpm 60
sleep 9
sample intro, amp: x
sleep 15.3
sample ko, amp: x
sleep 1
use_bpm 65
define :kraid_lair1 do |n1, n2, n3, n4|
  play n1
  sleep 1
  play n2
  sleep 0.5
  play n3
  sleep 1
  play n4
  sleep 0.5
end
define :kraid_lair2 do |n1, n2|
  play n1
  sleep 0.5
  play n2
  sleep 1
end
define :kraid_lair3 do |n1, n2, n3, n4, n5, n6|
  play n1
  sleep 0.25
  play n2
  sleep 0.25
  play n3
  sleep 0.25
  play n4
  sleep 0.25
  play n5
  sleep 0.25
  play n6
  sleep 0.25
end
define :kraid_lair4 do |n1, n2, n3|
  play n1
  sleep 1
  play n2
  sleep 1
  play n3
  sleep 1
end
live_loop:yeet do
  9.times do
    sample back, amp: 0.3
    sleep 8
  end
  stop
end
#Second song part 1----------------------------------------
live_loop :intro_beat do
  16.times do
    kraid_lair2 :e2, :e3
  end
  stop
end
4.times do
  kraid_lair1 :e4, :b3, :a4, :c4
  kraid_lair1 :fs4, :d4, :b3, :bb3
end
#Second song part 2----------------------------------------
live_loop:background do
  2.times do
    kraid_lair2 :c2, :c3
    kraid_lair2 :c2, :c3
    kraid_lair2 :d2, :d3
    kraid_lair2 :d2, :d3
  end
  stop
end
2.times do
  kraid_lair1 :g4, :d4, :e4, :b3
  kraid_lair1 :f4, :d4, :a4, :e4
end
#Second song part 3----------------------------------------
live_loop :background_beat do
  2.times do
    kraid_lair4 :e2, :b2, :e3
    kraid_lair4 :f2, :cs3, :f3
    kraid_lair4 :fs2, :cs3, :fs3
    kraid_lair4 :b2, :fs3, :b3
  end
  stop
end
4.times do
  kraid_lair3 :g4, :b3, :g4, :b3, :g4, :b3
  kraid_lair3 :as4, :cs4, :as4, :cs4, :as4, :cs4
  kraid_lair3 :a4, :c4, :a4, :c4, :a4, :c4
  kraid_lair3 :a4, :ds4, :fs4, :ds4, :b4, :fs4
end
#Second song part 4----------------------------------------
live_loop :back do
  2.times do
    kraid_lair1 :e2, :b2, :c3, :b2
    kraid_lair1 :c2, :f2, :g2, :a2
  end
  stop
end
2.times do
  kraid_lair3 :fs4, :g4, :a4, :b4, :d5, :b4
  kraid_lair3 :fs5, :d5, :a4, :g4, :fs4, :b4
  kraid_lair3 :a5, :fs5, :d5, :a4, :g4, :fs4
  play:e4
  sleep 0.25
  play:g4
  sleep 0.25
  play:a4
  sleep 0.25
  play:d5
  sleep 0.25
  play:e5
  sleep 0.25
end
#Second song part 5----------------------------------------
live_loop :final_beat do
  4.times do
    play:e3
    play:e2
    sleep 3
  end
  stop
end
4.times do
  play:a5
  sleep 0.5
  play:g5
  sleep 0.5
  play:fs5
  sleep 0.5
  play:e5
  sleep 0.5
  play:fs5
  sleep 0.5
  play:g5
  sleep 0.5
end
#Second song outro----------------------------------------
use_bpm 70
sample ko, amp: x
sleep 2.5
live_loop :finish do
  6.times do
    x=x-0.2
    sample ko, amp: x
    sleep 2.4
  end
  stop
end