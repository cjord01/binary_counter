def count_binary(num)
	binary_nums = []
	(0..num).each do |number|
		if number.to_s.include?("0") || number.to_s.include?("1")
			if number.to_s.split('').uniq.size <= 2
				if number.to_s.split('').sort.uniq.join('').to_i <= 1
					binary_nums << number
				end
			end
		end
	end
	binary_nums.each_with_index do |num, index|
		puts "#{index} - #{num}"
	end
end

count_binary(1111111)