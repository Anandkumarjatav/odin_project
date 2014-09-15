def caesar_cipher(string="What a string!", n=5)
	formated_string = ""
	string.each_char  do |char|
			if (65..90).include? char.ord
				char =((char.ord+n-65)%26+65).chr
			elsif (97..122).include? char.ord
				char =((char.ord+n-97)%26+97).chr
			end
			formated_string << char
	end
	p formated_string
end

caesar_cipher