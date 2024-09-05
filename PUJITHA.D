1.Write a program to Print Fibonacci Series using recursion.
def fibonacci(n):
    return n if n <= 1 else fibonacci(n-1) + fibonacci(n-2)
n_terms = 10  
for i in range(n_terms):
    print(fibonacci(i), end=' ')
2.Write a program to check the given no is Armstrong or not using recursive function.
def is_armstrong(num):
    order = len(str(num))
    temp = num
    sum = 0
    while temp > 0:
        digit = temp % 10
        sum += digit ** order
        temp //= 10
    return num == sum
number = 153
if is_armstrong(number):
    print(f"{number} is an Armstrong number")
else:
    print(f"{number} is not an Armstrong number")
3.Write a program to find the GCD of two numbers using recursive factorization.
def gcd_recursive(a, b):
    if b == 0:
        return a
    else:
        return gcd_recursive(b, a % b)
num1 = 48
num2 = 18
result = gcd_recursive(num1, num2)
print(f"The GCD of {num1} and {num2} is: {result}")
4.Write a program to get the largest element of an array.
def find_largest_element(arr):
    max_element = arr[0]
    for i in range(1, len(arr)):
        if arr[i] > max_element:
            max_element = arr[i]
    return max_element
array = [10, 30, 20, 50, 40]
largest_element = find_largest_element(array)
print("The largest element in the array is:", largest_element)
5.Write a program to find the Factorial of a number using recursion.
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)
num = 5
print("Factorial of", num, "is", factorial(num))
6.Write a program for to copy one string to another  using recursion.
def copy_string(source):
    return source[0] + copy_string(source[1:]) if source else ''
original = "Hello, World!"
copied = copy_string(original)
print(copied) 
7.Write a program to print the reverse of a string using recursion.
def reverse_string(s):
    return s if len(s) == 0 else s[-1] + reverse_string(s[:-1])
print(reverse_string("Hello, World!"))
8.Write a program to generate all the prime numbers using recursion.
def is_prime(n, i=2):
    if n <= 2:
        return n == 2
    if n % i == 0:
        return False
    if i * i > n:
        return True
    return is_prime(n, i + 1)
def generate_primes(start, end):
    if start <= end:
        if is_prime(start):
            print(start)
        generate_primes(start + 1, end)
generate_primes(2, 50)
9. Write a program to check a number is a prime number or not using recursion.
def is_prime(n, divisor=2):
    if n < 2: return False
    if divisor * divisor > n: return True
    if n % divisor == 0: return False
    return is_prime(n, divisor + 1)
number = 29
print(f"{number} is prime: {is_prime(number)}")
10.Write a program for to check whether a given String is Palindrome or  not using recursion.
def is_palindrome(s):
    s = s.lower().replace(" ", "")
    return s == s[::-1] if len(s) <= 1 else is_palindrome(s[1:-1])
string = "A man a plan a canal Panama"
print(is_palindrome(string))
11.Write a program to find the reverse of a given number using recursive.
def reverse_number(n, rev=0):
    if n == 0:
        return rev
    return reverse_number(n // 10, rev * 10 + n % 10)
number = 12345
print(reverse_number(number))
12.Write a program to find the perfect number.
def is_perfect(n):
    return n == sum(i for i in range(1, n) if n % i == 0)
perfect_numbers = [n for n in range(1, 10000) if is_perfect(n)]
print(perfect_numbers)
13.Write C program that demonstrates the usage of these notations by analyzing the time complexity of some example algorithms.
def example_algorithm(n):
    print("This is a constant time complexity algorithm")
for i in range(n):
        print("This is a linear time complexity algorithm")
for i in range(n):
        for j in range(n):
            print("This is a quadratic time complexity algorithm")
example_algorithm(5)
14.Write C programs that demonstrate the mathematical analysis of non-recursive and recursive algorithms.
# Non-Recursive Algorithm
def non_recursive_factorial(n):
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result
# Recursive Algorithm
def recursive_factorial(n):
    if n == 0:
        return 1
    else:
        return n * recursive_factorial(n - 1)
15.Write C programs for solving recurrence relations using the Master Theorem, Substitution Method, and Iteration Method will demonstrate how to calculate the time complexity of an example recurrence relation using the specified technique.
def master_theorem(a, b, k):
    if a < b**k:
        return "T(n) = Θ(n^k)"
    elif a == b**k:
        return "T(n) = Θ(n^k log n)"
    else:
        return "T(n) = Θ(n^(log_b(a)))"
def substitution_method(n):
    if n == 1:
        return 1
    return 2 * substitution_method(n // 2) + n
def iteration_method(n):
    total = 0
    while n > 1:
        total += n
        n //= 2
    return total
print(master_theorem(2, 2, 1))  # Master Theorem
print(substitution_method(8))    # Substitution Method
print(iteration_method(8))       # Iteration Method
16. Given two integer arrays nums1 and nums2, return an array of their Intersection. Each element in the result must be unique and you may return the result in any order.
def intersection(nums1, nums2):
    return list(set(nums1) & set(nums2))
nums1 = [1, 2, 2, 1]
nums2 = [2, 2]
result = intersection(nums1, nums2)
print(result)
17.Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
from collections import Counter
def intersect(nums1, nums2):
    count1, count2 = Counter(nums1), Counter(nums2)
    return list((count1 & count2).elements())
18.Given an array of integers nums, sort the array in ascending order and return it.You must solve the problem without using any built-in functions in O(nlog(n)) time complexity and with the smallest space complexity possible.
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)
nums = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
sorted_nums = quick_sort(nums)
print(sorted_nums)
19.Given an array of integers nums, half of the integers in nums are odd, and the other half are even.
nums = [1, 2, 3, 4, 5, 6]
half_odd_even = [x for x in nums if x % 2 == 0] + [x for x in nums if x % 2 != 0]
print(half_odd_even)
20.Sort the array so that whenever nums[i] is odd, i is odd, and whenever nums[i] is even, i is even. Return any answer array that satisfies this condition.
def sort_array_by_parity(nums):
    odd = [x for x in nums if x % 2]
    even = [x for x in nums if x % 2 == 0]
    return [even.pop(0) if i % 2 == 0 else odd.pop(0) for i in range(len(nums))]
21.You are given a string s, and an array of pairs of indices in the string pairs where pairs[i] = [a, b] indicates 2 indices(0-indexed) of the string.You can swap the characters at any pair of indices in the given pairs any number of times. Return the lexicographically smallest string that s can be changed to after using the swaps.
def smallestStringWithSwaps(s, pairs):
    def find(x):
        if parent[x] != x:
            parent[x] = find(parent[x])
        return parent[x]
def union(x, y):
        root_x, root_y = find(x), find(y)
        if root_x != root_y:
            parent[root_x] = root_y
parent = {i: i for i in range(len(s))}
    for a, b in pairs:
        union(a, b)
groups = collections.defaultdict(list)
    for i in range(len(s)):
        groups[find(i)].append(s[i])
for group in groups.values():
        group.sort(reverse=True)res = []
    for i in range(len(s)):
        res.append(groups[find(i)].pop())
return ''.join(res)
22.Given two strings: s1 and s2 with the same size, check if some permutation of string s1 can break some permutation of string s2 or vice-versa. In other words s2 can break s1 or vice-versa. A string x can break string y (both of size n) if x[i] >= y[i] (in alphabetical order) for all i between 0 and n-1.
def can_break(s1, s2):
    return sorted(s1) >= sorted(s2) or sorted(s2) >= sorted(s1)
s1 = "abc"
s2 = "aab"
print(can_break(s1, s2))
23.You are given a string s. s[i] is either a lowercase English letter or '?'. For a string t having length m containing only lowercase English letters, we define the function cost(i) for an index i as the number of characters equal to t[i] that appeared before it, i.e. in the range [0, i - 1]. The value of t is the sum of cost(i) for all indices i. For example, for the string t = "aab":
cost(0) = 0
cost(1) = 1
cost(2) = 0
Hence, the value of "aab" is 0 + 1 + 0 = 1. Your task is to replace all occurrences of '?' in s with any lowercase English letter so at the value of s is minimized.
from collections import Counter
def minimize_string_value(s):
    def cost(i, char_count):
        return sum(count for char, count in char_count.items() if char == s[i])
min_value = float('inf')
    for c in range(26):
        char_count = Counter()
        value = 0
        for i in range(len(s)):
            if s[i] == '?':
                value += cost(i, char_count)
            else:
                char_count[s[i]] += 1
        min_value = min(min_value, value)
return min_value
s = "a?b?c"
result = minimize_string_value(s)
print(result)
24.You are given a string s. Consider performing the following operation until s becomes empty: For every alphabet character from 'a' to 'z', remove the first occurrence of that character in s (if it exists). For example, let initially s = "aabcbbca". We do the following operations: Remove the underlined characters s = "aabcbbca". The resulting string is s = "abbca". Remove the underlined characters s = "abbca". The resulting string is s = "ba". Remove the underlined characters s = "ba". The resulting string is s = "". Return the value of the string s right before applying the last operation. In the example above, answer is "ba".
def remove_letters(s):
    for char in sorted(set(s)):
        s = s.replace(char, '', 1)
    return s
s = "aabcbbca"
result = remove_letters(s)
print(result)
25.Given an integer array nums, find the  subarray with the largest sum, and return its sum.
Example 1:
Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.
def max_subarray_sum(nums):
    max_sum = current_sum = nums[0]
    for num in nums[1:]:
        current_sum = max(num, current_sum + num)
        max_sum = max(max_sum, current_sum)
    return max_sum
nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
print(max_subarray_sum(nums))
26.You are given an integer array nums with no duplicates. A maximum binary tree can be built recursively from nums using the following algorithm: Create a root node whose value is the maximum value in nums. Recursively build the left subtree on the subarray prefix to the left of the maximum value. Recursively build the right subtree on the subarray suffix to the right of the maximum value. Return the maximum binary tree built from nums.
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
def constructMaximumBinaryTree(nums):
    if not nums:
        return None
    max_val = max(nums)
    max_index = nums.index(max_val)
    root = TreeNode(max_val)
    root.left = constructMaximumBinaryTree(nums[:max_index])
    root.right = constructMaximumBinaryTree(nums[max_index + 1:])
    return root
nums = [3, 2, 1, 6, 0, 5]
root = constructMaximumBinaryTree(nums)
27.Given a circular integer array nums of length n, return the maximum possible sum of a non-empty subarray of nums.A circular array means the end of the array connects to the beginning of the array. Formally, the next element of nums[i] is nums[(i + 1) % n] and the previous element of nums[i] is nums[(i - 1 + n) % n].A subarray may only include each element of the fixed buffer nums at most once. Formally, for a subarray nums[i], nums[i + 1], ..., nums[j], there does not exist i <= k1, k2 <= j with k1 % n == k2 % n.
def maxSubarraySumCircular(nums):
    total_sum = max_sum = min_sum = max_temp = min_temp = nums[0]
    for num in nums[1:]:
        max_temp = max(num, max_temp + num)
        max_sum = max(max_sum, max_temp)
        min_temp = min(num, min_temp + num)
        min_sum = min(min_sum, min_temp)
        total_sum += num
    return max(max_sum, total_sum - min_sum) if max_sum > 0 else max(nums)
28.You are given an array nums consisting of integers. You are also given a 2D array queries, where queries[i] = [posi, xi].For query i, we first set nums[posi] equal to xi, then we calculate the answer to query i which is the maximum sum of a subsequence of nums where no two adjacent elements are selected. Return the sum of the answers to all queries. Since the final answer may be very large, return it modulo 109 + 7. A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.
def max_sum(nums, queries):
    def max_non_adjacent_sum(arr):
        incl, excl = 0, 0
        for num in arr:
            new_excl = max(incl, excl)
            incl = excl + num
            excl = new_excl
        return max(incl, excl)
result = 0
    mod = 10**9 + 7
    for pos, x in queries:
        nums[pos] = x
        result = (result + max_non_adjacent_sum(nums)) % mod
    return result
29.Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2). You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).
import heapq
def kClosest(points, k):
    return heapq.nsmallest(k, points, key=lambda x: x[0]**2 + x[1]**2)
30.Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
def findMedianSortedArrays(nums1, nums2):
    nums = sorted(nums1 + nums2)
    n = len(nums)
    if n % 2 == 0:
        return (nums[n // 2 - 1] + nums[n // 2]) / 2
    else:
        return nums[n // 2]
















































