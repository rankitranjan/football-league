module Parse

	Column = ['pos', 'team', 'p', 'w', 'l', 'd', 'f', 'a', 'pts']

	def self.get_file
	  File.open(Rails.root+"tmp/football.dat", "r")
	end

	def self.start
	  rows_arr = []
	  file = get_file
	  while(row = file.gets)
	    if is_valid_row?(row)
	      rows_arr << format_data(row)
	    end
	  end
	  file.close
	  p rows_arr
	end

	def self.is_valid_row?(row)
	  row.split(" ").size == 10 && row.split[0][-1] == "."
	end

	def self.format_data(row)
		row = row.split(" ").reject { |item| item.strip == '-' }
		row = Hash[Column.zip(row)]
		row
	end

end
