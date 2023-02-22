-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

electricalConsumption :: Int -> Int -> String
electricalConsumption c a
    | c > a = "You are over your limit"
    | c < a = "You are still ok"
    | otherwise = "There seems to be an error, please check your inputs."

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

electricalConsumption' :: Int -> Int -> String
electricalConsumption' c a
    | c > a = excess
    | c < a = savings
    | otherwise = "There seems to be an error, please check your inputs"
        where
            excess = "You are" ++ show (a - c) ++ " over your limit"
            savings = "You have saved " ++ show (a - c) ++ " this cycle"

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.



-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block.