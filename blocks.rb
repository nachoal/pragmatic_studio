#Single line block
3.times { puts "Echo" }


10.times do
	puts "situp"
	puts "pushup"
	puts "chinup"
end
			#goal posts
10.times do |number|
		#block parameters are local to the block 
	puts "#{number}situp"
	puts "#{number}pushup"
	puts "#{number}chinup"
end

1.upto(10) do |number|
	puts "#{number}situp"
	puts "#{number}pushup"
	puts "#{number}chinup"
end