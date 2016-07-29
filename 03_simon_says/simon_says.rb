#write your code here

def echo (speech)
	return speech
end

def shout (speech)
	return speech.upcase
end

def repeat (speech, num=2)
	return speech + (" " + speech)*(num-1)
end

def start_of_word (speech, num=1)
	if (num == 1)
		return speech[0]
	else
		return speech[0, num]
	end
end

def first_word (speech)
	return speech.split[0]
end

def titleize (speech)
	little_words = ['and', 'the', 'a', 'an', 'over', 'under', 'in', 'out']
	speech_words = speech.split
	speech_words.each do |word|
		unless (little_words.include?(word))
			word.capitalize!
		end
	end
	speech_words[0].capitalize!
	return speech_words.join(" ")
end