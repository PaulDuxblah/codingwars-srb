Array.new(1000).fill {|i| i}.drop(1).find_all{|item| item % 3 == 0}.inject(0){|sum, x| sum + x} + Array.new(1000).fill {|i| i}.drop(1).find_all{|item| item % 5 == 0}.inject(0){|sum, x| sum + x} - Array.new(1000).fill {|i| i}.drop(1).find_all{|item| item % 15 == 0}.inject(0){|sum, x| sum + x}