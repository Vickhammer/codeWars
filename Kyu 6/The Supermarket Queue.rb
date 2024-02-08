# // DESCRIPTION:
# // There is a queue for the self-checkout tills at the supermarket. Your task is write a function to calculate the total time required for all the customers to check out!

# // input
# // customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
# // n: a positive integer, the number of checkout tills.
# // output
# // The function should return an integer, the total time required.

def queue_time(customers, n)

    return 0 if customers.empty?
    queue = Array.new(n) {0}
    if customers.length > n
      (0..customers.length-1).each do |i|
          index = queue.index(queue.min)
          queue[index] += customers[i]
      end
      return queue.max
    else
      return customers.max
    end
  end
       