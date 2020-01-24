intro="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/kraid_lair_intro.wav"
ko="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/samus_star_ko.wav"
back="C:/Users/jordan_lee/Desktop/Sonci Pi/samples/background.wav"

print sample_duration intro
print sample_duration ko
print sample_duration back

sample intro
sleep 15.3

sample ko
sleep 1

live_loop:yeet do
  sample back
  sleep 8
end

live_loop :background_beat do
  play:e2
  sleep 0.5
  play:e3
  sleep 1
end

live_loop :main_beat do
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