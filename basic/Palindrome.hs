module Palindrome where
    isPalindrome :: String -> Bool
    isPalindrome word = 
        word == reverse word