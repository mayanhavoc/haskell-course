
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Floating a => a -> a -> a -> a
f1 x y z = x ** (y/z)

f2 :: Floating a => a -> a -> a -> a
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

f4 :: Eq a => [a] -> [a] -> [a] -> Bool
f4 x y z = x == (y ++ z)


-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.

"Although the functional programming paradigm emphasises the virtues of immutable variables, sometimes you need mutable variables nonetheless. You can either simulate mutable variables using the state monad provided for instance by Control.Monad.Trans.State in the transformers package or you can use really mutable variables as provided by Data.IORef or Data.STRef or Control.Concurrent.STM.TVar from the stm package. In either case you need a monad in order to cope with mutability, while staying purely functional.
[Wiki Haskell - Mutable variable](https://wiki.haskell.org/Mutable_variable)"

-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?

"A type restricts the usage of an expression, this can help to make sure that the values that are stated in the expression are the ones actually being used, which prevents errors. Types also make the code more readable to other users."

"Learn you a Haskell: The type of every expression is known at compile time, which leads to safer code. It's better to catch such errors at compile time instead of run time, which will cause the program to crash. Because everything in Haskell has a type, it helps the compiler reason about the program before actually running it."

-- Question 4
-- Why should you define type signatures for variables? How can they help you?

"Variables in Haskell are immutable, so it is important that it have a type signature to know how to use it in an expression."

-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.

"Yes, they are called -- explicit coercion -- functions. For example `fromIntegral` will convert any `Integral` type into any numeric type."

-- Question 6
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

"ChatGPT3: To access the innermost elements of a list of lists in Haskell, you can use the `!!` operator to index into the outer list to get an inner list, and then use the `!!` operator again to index into the inner list to get the innermost element."

```Haskell2010
-- Define a list of lists
myList :: [[Int]]
myList = [[1,2,3], [4,5,6], [7,8,9]]

-- Get the first inner list
innerList1 :: [Int]
innerList1 = myList !! 0

-- Get the second element of the first inner list
innermostElement :: Int
innermostElement = innerList1 !! 1
```



