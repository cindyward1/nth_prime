def prime_sifting(input_number)

  number_list = (2..(input_number-1)).to_a

  number_list.each do |prime|
    # prime_limit is the highest number of times plus 1 (for using < ) prime will divide
    # into the input_number. It serves to limit the number of times the number_list
    # traverse is performed. input_number is converted to a float so the result from
    # dividing by prime is not truncated to the nearest integer
    prime_limit = (input_number.to_f/prime).ceil
    if prime < prime_limit
      number_list.each do |number_list_item|
    # delete the current item from the number_list if it is divisible by the current prime
    # number (but is not the current prime number)
        if (number_list_item % prime) == 0 && (number_list_item != prime)
          number_list.delete(number_list_item)
        end
      end
    end
  end

  return number_list

end

def nth_prime (prime_count)

  nth_prime_hash = {0=>1, 1=>2, 4=>10, 25=>100, 168=>1000, 1229=>10000, 9592 => 100000}
  list_of_primes = []
  isFound = false

  if (prime_count > 0) && (prime_count <= 9592)
    nth_prime_hash.each do |nth_prime_key, nth_prime_value|
      if prime_count <= nth_prime_key && !isFound
        list_of_primes = prime_sifting(nth_prime_value + 1)
        isFound = true
      end
    end

    list_of_primes.each_with_index do |prime_number, index|
      if (index + 1) == prime_count
        return prime_number
      end
    end

  else # input number is negative which is meaningless or too big for the nth_prime_hash
    return 0
  end

end
