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