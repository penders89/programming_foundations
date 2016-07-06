def balanced?(string)
    opened = 0
    closed = 0
    string.chars.each do |char|
        opened += 1 if char == '('
        closed += 1 if char == ')'
        return false if closed > opened
    end
    opened == closed
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false