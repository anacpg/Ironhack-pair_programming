

require 'ruby-dictionary'

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain
        # Write your algorithm here
    end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)