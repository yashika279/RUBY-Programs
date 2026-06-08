require 'byebug'

def peak_tracker(array)
  n = array.length
  return [] if n == 0

  peak  = array[0]
  index = 0
  output = []

  # data =  [1,4,2,-2,-9,10,2,12,2,-4,-4,-4,-4,2,6,7]

  (1...n).each do |x|
      if array[x] * array[x - 1] >= 0   
        if peak < 0 && array[x] < peak
            peak  = array[x]
            index = x
        end
        if peak >= 0 && array[x] > peak
            peak  = array[x]
            index = x
        end
      else
        output << [index, peak]
        peak  = array[x]
        index = x
      end
  end
  output
end

data =  [1,4,2,-2,-9,10,2,12,2,-4,-4,-4,-4,2,6,7]
puts peak_tracker(data).inspect