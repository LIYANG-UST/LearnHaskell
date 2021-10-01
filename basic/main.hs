import Palindrome (isPalindrome)

main :: IO()
main = 
    do 
        word <- getLine
        print(isPalindrome word)