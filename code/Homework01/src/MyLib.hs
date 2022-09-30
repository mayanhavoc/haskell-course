
-- Write a function that takes a value and multiplies it by 3. Test that it works using GHCi.
mult :: Integer -> Integer
mult x = x * 3 

-- Write a function that calculates the area of a circle. Test that it works using GHCi.
circleArea :: Float -> Float
circleArea x = pi * (x**2)

-- Write a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
-- Test that it works using GHCi.

cylinderHeight :: Float -> Float-> Float
cylinderHeight h a = h * circleArea a


-- Write a function that checks if the volume of a cylinder is greater than or equal to 42. Test that it works using GHCi.

