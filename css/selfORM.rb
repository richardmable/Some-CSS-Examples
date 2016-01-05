		def self.all
			@usersReturn = Array.new{Hash.new}
				dbLength = `psql -d homeworktest -c "SELECT COUNT(id) FROM users"`
				puts dbLength
				x = 1
				(1..dbLength).each do |x|
					pulledResults = `psql -d homeworktest -c "SELECT fname, lname, email FROM users WHERE ID = '#{x}'"`
					@usersReturn.push(pulledResults)
					x += 1
				end
				puts @usersReturn
			end