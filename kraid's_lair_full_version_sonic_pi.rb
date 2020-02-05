intro="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/kraid_lair_intro.wav"
ko="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/samus_star_ko.wav"
back="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/background.wav"
fanfare="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/fanfare.wav"

print sample_duration intro
print sample_duration ko
print sample_duration back
print sample_duration fanfare

x=1.2




sample fanfare, amp: x
sleep 9

sample intro, amp: x
sleep 15.3

sample ko, amp: x
sleep 1

live_loop:yeet do
  9.times do
    sample back, amp: 0.3
    sleep 8
  end
  stop
end

live_loop :intro_beat do
  16.times do
    play:e2
    sleep 0.5
    play:e3
    sleep 1
  end
  stop
end

4.times do
  play:e4
  sleep 1
  play:b3
  sleep 0.5
  play:a4
  sleep 1
  play:c4
  sleep 0.5
  
  play:fs4
  sleep 1
  play:d4
  sleep 0.5
  play:b3
  sleep 1
  play:bb3
  sleep 0.5
end

live_loop:background do
  2.times do
    play:c2
    sleep 0.5
    play:c3
    sleep 1
    play:c2
    sleep 0.5
    play:c3
    sleep 1
    play:d2
    sleep 0.5
    play:d3
    sleep 1
    play:d2
    sleep 0.5
    play:d3
    sleep 1
  end
  stop
end

2.times do
  play:g4
  sleep 1
  play:d4
  sleep 0.5
  play:e4
  sleep 1
  play:b3
  sleep 0.5
  
  play:f4
  sleep 1
  play:d4
  sleep 0.5
  play:a4
  sleep 1
  play:e4
  sleep 0.5
end

live_loop :background_beat do
  2.times do
    play:e2
    sleep 1
    play:b2
    sleep 1
    play:e3
    sleep 1
    
    play:f2
    sleep 1
    play:cs3
    sleep 1
    play:f3
    sleep 1
    
    play:fs2
    sleep 1
    play:cs3
    sleep 1
    play:fs3
    sleep 1
    
    play:b2
    sleep 1
    play:fs3
    sleep 1
    play:b3
    sleep 1
  end
  stop
end

4.times do
  play:g4
  sleep 0.25
  play:b3
  sleep 0.25
  play:g4
  sleep 0.25
  play:b3
  sleep 0.25
  play:g4
  sleep 0.25
  play:b3
  sleep 0.25
  
  play:as4
  sleep 0.25
  play:cs4
  sleep 0.25
  play:as4
  sleep 0.25
  play:cs4
  sleep 0.25
  play:as4
  sleep 0.25
  play:cs4
  sleep 0.25
  
  play:a4
  sleep 0.25
  play:c4
  sleep 0.25
  play:a4
  sleep 0.25
  play:c4
  sleep 0.25
  play:a4
  sleep 0.25
  play:c4
  sleep 0.25
  
  play:a4
  sleep 0.25
  play:ds4
  sleep 0.25
  play:fs4
  sleep 0.25
  play:ds4
  sleep 0.25
  play:b4
  sleep 0.25
  play:fs4
  sleep 0.25
end

live_loop :back do
  2.times do
    play:e2
    sleep 1
    play:b2
    sleep 0.5
    play:c3
    sleep 1
    play:b2
    sleep 0.5
    
    play:c2
    sleep 1
    play:f2
    sleep 0.5
    play:g2
    sleep 1
    play:a2
    sleep 0.5
  end
  stop
end

2.times do
  play:fs4
  sleep 0.25
  play:g4
  sleep 0.25
  play:a4
  sleep 0.25
  play:b4
  sleep 0.25
  play:d5
  sleep 0.25
  play:b4
  sleep 0.25
  
  play:fs5
  sleep 0.25
  play:d5
  sleep 0.25
  play:a4
  sleep 0.25
  play:g4
  sleep 0.25
  play:fs4
  sleep 0.25
  play:b4
  sleep 0.25
  
  play:a5
  sleep 0.25
  play:fs5
  sleep 0.25
  play:d5
  sleep 0.25
  play:a4
  sleep 0.25
  play:g4
  sleep 0.25
  play:fs4
  sleep 0.25
  
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