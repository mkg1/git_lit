def binary_search(set, search_item)
  low = 0
  high = set.length - 1
  while low < high
    midpoint = (low + high)/2
    guess  = set[midpoint]
    if guess == search_item
      return midpoint
    elsif guess > search_item
      high = midpoint - 1
    else
      low = midpoint + 1
    end
  end
end

test_list = [1, 2, 4, 8, 9, 18, 22, 24, 32, 33, 49, 88, 99]
puts binary_search(test_list, 32)

#Exercises
#Chapter 1 - Binary Search
# 1.1 Sorted list of 128 names; max steps? | 128 -> 7
# 1.2 Double that list; now how many steps? | 256 -> 8
# Give the runtime for each scenario:
# 1.3 Find someone's phone number based on a given name in a phone book. | O(log2n)
# 1.4 Find someone's name based on a phone number in a phone book. | O(n)
# 1.5 Read numbers of every person in the phone book. | O(n)
# 1.6 Read the numbers of just the A's in the phone book. | O(n + 1)

# # Chapter 2 - Selection Sort
# 2.1 You have a list that will require lots of writes, and a few reads; do you use an array or list? | list
# X 2.2 You are building an app to store a list of orders; servers add to the back of the queue, chefs remove from top of it. Should it be an array or linked list? | array. nope. use a list because faster inserts/deletions. Also, adding to the front/removing from back so you don't need random access (aka arrays)
# 2.3 FB keeps list of usernames; when someone logs in, a search is done for their UN. Suppose FB uses binary search that needs random access. Array or list? | array
# 2.4 You use an array to store a list of FB users. What are the downsides of an array for inserts? You're using binary search for logins...What happens when you add new users to an array? | Everything has to shift; using a list would allow for better sequential insert rather than having to shift the location of every succeeding item.
# 2.5 FB actually uses neither linked lists nor arrays. Suppose it uses an array of linked lists. You have an array of 26 slots, each w/ a LL by letter. Adit B signs up and you go to slot 1 in the array and add Adit B to the end of the LL. Now you want to search for Zakhir H. You go to slot 26 and search the LL. Compare this hybrid data structure to arrays and LLs. Slower? Faster for inserts/searching? | Great for sequential within each letter/26 LL;

# Chapter 3 - Recursion
3.1 What info can you give based on the call stack greet2:name>maggie;greet:name>maggie? |
3.2 You accidentally write an infinite loop. What happens to the stack when your recursive function runs forever?

# Chapter 4 - Quicksort
4.1 Write out the code for the earlier sum function
4.2 Write a recursive function to count the number of items in a lists
4.3 Find the maximum number in a list
4.4 Remember binary search? It''s a D&C algo...can you come up with the base case and recursive case for binary search?
How long in big O notation?
4.5 Printing the value of each element in an array
4.6 Doubling the value of each element in an array
4.7 Doubling the value of just the first element in an array
4.8 Creating a multiplication table with all the elements in the array. So if array is [2, 3, 7, 8, 10], you first multiply every element by 2, then multiply every element by 3, then by 7, etc.

# Chapter 5 - Hash tables
Which of these hash functions are consistent?
5.1 f(x) = 1
5.2 f(x) = rand()
5.3 f(x) = next_empty_slot()
5.4 f(x) = len(x)
5.5 A phone book where keys are names and values are numbers; names = Esther, Ben, Bob, and Dan
5.6 A mapping from battery size to power; sizes = A, AA, AAA, AAAA
5.7 A mapping from book titles to authors; titles = Maus, Fun Home, Watchmen
For 5.5-5.7, which hash functions would provide a good distribution? Assume a hash table size of 10 slots.
>>return 1 for all input
>>use the length of teh string as the index
>>use the first character of the string as the index. So, all strings starting with 'a' are hashed together and so on
>>Map every letter to a prime number (a=2, b=3, c=5, etc); for a string, the hash functionis the sum of all the characters modulo the size of the hash. e.g., if your hash size is 10, and the string is "bag", the index is 3+2+17 %10 = 22%10 =2

#Chapter 8 - Greedy Algorithms
8.1 You work for a furniture co and have to ship all over the country; you need to pack a truck w boxes of diff sizes and trying to maximize space used in each truck. How would you pick boxes to max. space? Come up w greedy strategy. Will that be optimal solution?
8.2 You're going to Europe and you've got 7 days. You assign a point value to each itinerary list and estimate how long it takes. How can you maximize the point total (see as much as you can that you really want to see)? Use greedy strategy. Optimal Solution?
8.3 greedy or not? quicksort?
8.4 greedy or not? BFS?
8.5 greedy or not? Dj''s algo?
8.6 Postman needs to deliver to 20 homes; needs to find shortest route. NPC?
8.7 Finding the largest clique in a set of people...NPC?
8.8 Making a map of USA and need adjacent states to be diff colors; you have to find minimum number of colors needed. NPC?

#Chapter 9
9.1 Suppose you steal another item for the knapsack problem - an mp3 player weighing 1lb, worth $1000. Should you steal it?
9.2 You're going cmaping with a knapsack that'll hold 6lbs and you can take:
  water/3lbs/10; book/1lb/3; food/2lb/9; jacket/2lb/5; camera/1lb/6
  what is optimal set to take on camping trip? (each item has weight and rank)
9.3 Draw and fill in grid to calculate longest common substring between blues and clues
