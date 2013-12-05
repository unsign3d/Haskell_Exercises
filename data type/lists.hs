-- Luca Bruzzone
-- Exercises in Haskell

-- definition of a list
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)  

--list length
listLength :: List a -> Int
listLength Empty = 0
listLength (x :-: xs) = 1 + listLength xs

-- list concat
listConcat :: List a -> List a -> List a
listConcat Empty ys = ys
listConcat (x :-: xs) ys = x :-: (listConcat xs ys)

-- will be added another function later