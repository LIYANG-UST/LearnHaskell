import Palindrome 
import Data.Char
main :: IO()
main = 
    do 
        word <- getLine
        print(verbose word)