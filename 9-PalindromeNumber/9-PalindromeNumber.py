# Last updated: 7/21/2025, 12:40:40 AM
class Solution:
    def isPalindrome(self, x: int) -> bool:
        # My solution
        return str(x)[:] == str(x)[::-1]

        # Best solution of Leet Code
        # if x < 0:
        #     return False

        # reverse: int = 0
        # xcopy: int = x

        # while x > 0:
        #     reverse = (reverse * 10) + (x % 10)
        #     x //= 10
        
        # return reverse == xcopy
