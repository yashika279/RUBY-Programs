require 'pry'
taskData = [{ "a" => nil, "b" => 1 },nil,[2, nil, 3],[nil,[nil],{"a" => nil, "b" => [nil] }],{"a"=> 4,"b"=> { "a" => nil, "b" => nil },"c"=> { "a" => nil }}]


def task_data(taskData)
  taskData.each_with_index do |data, i|
    if data.class == 'Hash'
      
    else
    end
    binding.pry

  end
end

task_data(taskData)