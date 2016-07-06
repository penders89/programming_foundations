def diamond(int)
    final = ''
    (1..int).select(&:odd?).each do |n|
        final += ('*'*n).to_s.center(int) + "\n"
    end
    int.downto(1).select(&:odd?).each do |n|
        final += ('*'*n).to_s.center(int) + "\n"
    end
    puts final
end

diamond(9)

