BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
    BLOCKS.each do |letters|
        return false if (word.scan(letters[0]).count + 
                        word.scan(letters[1]).count) > 1
    end
    true
end
        


p block_word?('BATCH') == true
p block_word?('BUTCH') == false