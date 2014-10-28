def count_binary(num)
	binary_nums = []
	(0..num).each do |number|
		if number.to_s.split('').uniq.size <= 2
			if number.to_s.split('').sort.uniq.join('').to_i <= 1
				binary_nums << number
			end
		end
	end
	counter = 0
	binary_nums.each do |binary_num|
		puts "#{counter} - #{binary_num}"
		counter += 1
	end
end

					