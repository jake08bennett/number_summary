# @author Jake Bennett <jake08bennett@hotmail.com>
# @author Jake Maldonado <>
class NumberSummary
	
	class << self
	
		def max(max_array)
			max = 0
			max_array.each do |element|
				if element > max 
					max = element
				end
			end
			 max
		end

		def min(min_array)
			min = 20
			min_array.each do |element|
				if element < min 
					min = element
				end
			end
			 min
		end	

		def mean(array)
			sum = 0
			array.each do |n| (sum += n)
			end
			m = ((sum/ array.length).round(1))
		end

		def median(median_array)
			a = median_array.sort_by(&:to_i)
			middle = a.length / 2
			if middle.is_a? Integer 
				middle = middle
			else
				upper_no = middle.ceil
				lower_no = middle.floor
				middle = (upper_no + lower_no)/2
			end
			middle_no = median_array[middle]
			puts middle_no
		end

		def mode(array)
		var = 0
		mode = 0
		prevVar = 0
		array.each do |i|
			array.each do |n|
				if i == n
					var += 1
					mode = n if var > prevVar
					prevVar = var
				end
			end
			var = 0
		end
		puts "#{mode}"
	end

	def data_summary()
		puts "This is your data summary:"
		puts "Maximum number: #{max} \n"
	end


		 
	end
end