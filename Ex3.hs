import List
import Cp

-- convolve :: Num a => [a] -> [a] -> [a]
-- convolve xs ys = [sum [xs !! i * ys !! (j - i) | i <- [max 0 (j - length ys + 1)..min (length xs - 1) j]] | j <- [0..length xs + length ys - 2]]

convolve :: Num a => [a] -> [a] -> [a]
convolve xs ys = hyloList combineWindows generateWindows (pad xs, reverse ys)
  where
    -- Adiciona zeros no início e no final para permitir os deslocamentos
    pad zs = replicate (length ys - 1) 0 ++ zs ++ replicate (length ys - 1) 0

    -- Anamorfismo: Gera as janelas de convolução
    generateWindows ([], _) = i1 ()
    generateWindows (xs, ys)
      | length xs < length ys = i1 ()
      | otherwise = i2 (take (length ys) xs, (tail xs, ys))

    -- Catamorfismo: Combina as janelas calculadas
    combineWindows = either (const []) (\(window, rest) -> sum (zipWith (*) (reverse window) ys) : rest)

-- TODO: Implementar uma versão pointwise mais orientada às funções disponibilizadas 


--convolve :: Num a => [a] -> [a] -> [a]
--convolve xs ys = hyloList (combineWindows ys) generateWindows (pad xs, reverse ys)

-- Adiciona zeros no início e no final para permitir os deslocamentos
--pad zs ys = replicate (length ys - 1) 0 ++ zs ++ replicate (length ys - 1) 0

-- Anamorfismo: Gera as janelas de convolução
--generateWindows ([], _) = i1 ()
--generateWindows (xs, ys)
--  | length xs < length ys = i1 ()
--  | otherwise = i2 (take (length ys) xs, (tail xs, ys))

-- Catamorfismo: Combina as janelas calculadas
--combineWindows ys = either (const []) (\(window, rest) -> sum (zipWith (*) (window) ys) : rest)

-- TODO: Implementar uma versão pointwise mais orientada às funções disponibilizadas 

