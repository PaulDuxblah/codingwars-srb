def two_whiles # To have the correct value fastly
  sum = 0
  i = 1
  executions = 2 # I don't count the executions' sum in the algorithm

  while 5*i < 1000 do
    sum += 5*i
    i += 1
    executions += 3
  end

  i = 1
  executions += 1

  while 3*i < 1000  do
    sum += 3*i unless i % 5 == 0
    i += 1
    executions += (i % 5 == 0) ? 3 : 5
  end

  puts 'executions: ' + executions.to_s # 2133
  sum # 233168
end




def euler(max, a, b)
  if b != 0 && a % b == 0 
    euler_product(max, b)
  elsif a != 0 && b % a == 0
    euler_product(max, a)
  else
    euler_from_two(max, a, b)
  end
end

# All from a plus all from b minus all common
def euler_from_two(max, a, b)
  euler_product(max, a) + euler_product(max, b) - euler_rest_from_two(max, a, b)
end

def euler_product(max, a)
  # ex with 1000 and 5: 1000 * 99 + 500
  euler_sum(max, a) + (get_median(max, a) / 2)
end

def euler_rest_from_two(max, a, b)
  # ex with 1000, 3 and 5: 1005 * 33
  euler_sum(max, a * b)
end

def get_max(max, modulo)
  # ex with 1000 and 5: 995
  if max % modulo == 0
    max - modulo
  else
    max - (max % modulo)
  end
end

def get_median(max, modulo)
  # ex with 1000 and 3: 1002
  get_max(max, modulo) + modulo
end

def euler_sum(max, a)
  # ex with 1000 and 5: 1000 * 99
  get_median(max, a) * ((max.to_f / (a * 2)).ceil - 1)
end
