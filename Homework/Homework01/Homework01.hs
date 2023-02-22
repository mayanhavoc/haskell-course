
-- Question 1
-- Write a multiline comment below.

{- 
    This
    is
    a
    multi-line
    comment
-}

-- Question 2
-- Define a function that takes a value and multiplies it by 3.

mult3 :: Num a => a -> a
mult3 x = x * 3

-- Question 3
-- Define a function that calculates the area of a circle.

circArea :: Floating a => a -> a
circArea r = pi * (r*r)

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
cylVolume :: Floating a => a -> a -> a
cylVolume h r = circArea r * h

-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.
gThan :: (Ord a, Floating a) => a -> a -> Bool
gThan h r = circArea r * h >= 42 || False



