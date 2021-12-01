sonar_reads = File.read('input1.txt').split.map { |data| data.to_i }

counter = 0
sonar_reads[0..-4].each_with_index do |sonar_read, index|
  counter += 1 if sonar_read < sonar_reads[index + 3]
end

puts counter
