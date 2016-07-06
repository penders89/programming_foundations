MAX = 1000
lights = []

MAX.times do
    lights.push('OFF')
end

(1..MAX).each do |n|
    lights.each_with_index do |light, idx|
        if (idx + 1) % n == 0
            light == 'OFF' ? lights[idx] = 'ON' : lights[idx] = 'OFF'
        end
    end
end

p lights

puts lights.select{|n| n== 'ON'}.count