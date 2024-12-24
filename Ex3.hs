import List
import Cp

convolve :: Num a => [a] -> [a] -> [a]
convolve xs ys = [sum [xs !! i * ys !! (j - i) | i <- [max 0 (j - length ys + 1)..min (length xs - 1) j]] | j <- [0..length xs + length ys - 2]]
