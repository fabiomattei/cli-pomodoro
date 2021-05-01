require 'date'

# creating logs directory
Dir.mkdir("logs") unless File.exists?("logs")  

filename = Date.today.strftime("%Y-%m")

File.write("logs/" + filename + ".txt", Date.today.strftime("%d-%m-%Y %H:%M: ") + ARGV.join(' ') + "\n", mode: "a")

t = Time.new(0)
timer = 25

timer.downto(0) do |minutes|
  puts (t + minutes * 60).strftime('%M:%S')
  sleep 60
end

`afplay BELL.aiff`

puts "time is up!"
