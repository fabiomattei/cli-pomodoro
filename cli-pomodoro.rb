t = Time.new(0)
timer = 25

timer.downto(0) do |minutes|
  puts (t + minutes * 60).strftime('%M:%S')
  sleep 60
end

`afplay BELL.aiff`

puts "time is up!"
