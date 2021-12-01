sonar_reads = File.read('input1.txt').split.map { |data| data.to_i }

counter = -1
previous_sonar_read = -1
sonar_reads.each do |sonar_read|
  counter += 1 if sonar_read > previous_sonar_read
  previous_sonar_read = sonar_read
end

puts counter
