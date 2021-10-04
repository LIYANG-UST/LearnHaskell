module Palindrome where
    import Data.Char (toLower)
    isPalindrome :: String -> Bool
    isPalindrome word = 
        word == reverse word

    nonEmptyPal :: String -> Maybe Bool 
    --nonEmptyPal word = 
    --    if (word == "") then False else
    --          (isPalindrome word)
    nonEmptyPal word =
        case word of 
            "" -> Nothing 
            _  -> Just (isPalindrome word)

    verbose :: String -> String 
    verbose word = 
        case nonEmptyPal word of
            Nothing -> "Please enter a word"
            Just False -> "Sorry, this is not a palindrome"
            Just True -> "Yay, it is a palindrome"
    
    allLowerCase :: String -> String 
    allLowerCase = myMap toLower 

    myMap :: (a->a) -> [a] -> [a]
    myMap func list = 
        case list of
            [] -> []
            (first : rest) -> func first : myMap func rest

    myHead :: [a] -> a
    myHead (first : rest) = first

    myTail :: [a] -> [a]
    myTail xs = 
        case xs of
            [] -> []
            (first : rest) -> rest
    
    isPalindromeIgnoringCase :: String -> Bool 
    isPalindromeIgnoringCase word =
        isPalindrome (allLowerCase word)