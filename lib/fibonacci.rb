# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8


def fibonacci(n)
  raise ArgumentError if n.class != Integer
  raise ArgumentError if n < 0
  return 0 if n < 1
  if n < 2
    return 1
  end

  one_ago = 1
  two_ago = 1
  current = 2
  current_val = 2

  while current < n
    current += 1
    current_val = one_ago + two_ago
    two_ago = one_ago
    one_ago = current_val
  end

  return current_val
end
