# input = [
#   ["JFK", "SFO"],
#   ["BOS", "MIA"],
#   ["SFO", "PEK"],
#   ["MIA", "JFK"],
# ]

# # Example Output:
# # Correct output for the above example:
# # output = [
# #    ("BOS", "MIA"),
# #    ("MIA", "JFK"),
# #    ("JFK", "SFO"),
# #    ("SFO", "PEK"),
# # ]
# require 'byebug'
class Airport
  def correct_order(stations_array)
    arrange = {}
    a=stations_array.sort.to_h
    a.each do |k, val|
      arrange[k] = val if !arrange.any?

      key = val
      if !arrange.has_key?(key)
        value = a[key]
        arrange[key] = value
      end
    end
    arrange
  end
end

puts "#{Airport.new.correct_order([
  ["JFK", "SFO"],
  ["BOS", "MIA"],
  ["SFO", "PEK"],
  ["MIA", "JFK"],
])}"