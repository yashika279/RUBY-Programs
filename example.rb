def talk(person)
  puts "Start to talk with #{person}"
  sleep rand (1..10)
  puts "done talking with #{person}"
end

persons = ["Bob", "Helen", "Violet", "Dash", "Jack"]

threads = persons.map do |person|
  talk(person)
end

threads.each{|t|t.join}
puts "Finished talking with Incredibles!"