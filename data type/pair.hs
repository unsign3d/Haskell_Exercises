-- Luca Bruzzone
-- Exercises in Haskell

--definition of a pair
data Pair a b = Pair a b deriving (Show, Read, Eq, Ord)

--show first and last
pairFst :: Pair Int Int -> Int
pairFst (Pair a b) = a
pairLst :: Pair Int Int -> Int
pairLst (Pair a b) = b

--four operation
pairSum :: Pair Int Int -> Int
pairSum (Pair a b) = (+) a b
pairSub :: Pair Int Int -> Int
pairSub (Pair a b) = (-) a b
pairMul :: Pair Int Int -> Int
pairMul (Pair a b) = (*) a b

pairDiv (Pair a b) = (/) a b
pair2List :: Pair Int Int -> [Int]
pair2List(Pair a b) = [a,b]

--swap
pairSwp :: Pair Int Int -> Pair Int Int
pairSwp (Pair a b) = Pair b a
