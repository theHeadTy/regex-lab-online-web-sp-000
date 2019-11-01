def starts_with_a_vowel?(word)
  word.match?(/\A[aeiou]/i)
end

def words_starting_with_un_and_ending_with_ing(text)
  new = []
  new = text.split
  new.select { |m| /(un|ing)/ =~ m }
  #new.select { |m| m.match(/(un|ing)/) }
end

def words_five_letters_long(text)
  new = []
  new = text.split
  new.select { |m| m if m.size == 5 }
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match?(/^[A-Z].*\W$/)
end

def valid_phone_number?(phone)
  /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/.match?(phone)
end

words = %w{ afoot Excellent incredible Absolute unreal Inconceivable octopus }
words.select { |w| starts_with_a_vowel?(w) }

words_string = "unassuming ambiguous understanding pomp circumstance uninteresting uncompromising grouchy corollary"
words_starting_with_un_and_ending_with_ing(words_string)


words_string = "extreme briny crepe parking snaps grouping snafu round dog be fork spoon"
words_five_letters_long(words_string)


correct_punctuation = "I stepped on a Corn Flake, now I'm a cereal killer."
first_word_capitalized_and_ends_with_punctuation?(correct_punctuation)

incorrect_punctuation = "Did you hear about the guy whose whole left side was cut off? He's all right now"
first_word_capitalized_and_ends_with_punctuation?(incorrect_punctuation)

valid_numbers = ["2438894546", "(718)891-1313", "234 435 9978", "(800)4261134"]
valid_numbers.select { |n| valid_phone_number?(n) }