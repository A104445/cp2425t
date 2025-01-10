import List
import Cp


--convolve = ap . split (uncurry hyloList (combineWindows >< generateWindows) . (id >< p2)) (pad . p2) . (curry (split (reverse . p2) (id >< length)))

convolve = ((ap . split ((uncurry hyloList .) (curry combineWindows >< curry generateWindows) . (id >< p2)) (pad . p2)) .) . (curry (split (reverse . p2) (id >< length)))

--convolve = ((split (id >< p2) (pad . p2)) .) . (curry (split (reverse . p2) (id >< length)))

-- Adiciona zeros no início e no final para permitir os deslocamentos
pad = conc . split p2 conc . (id >< ap . split replicate (const 0)) . (id >< ap . split (-) (const 1))

-- Anamorfismo: Gera as janelas de convolução
generateWindows (n,xs)
    | length xs < n = i1 ()
    | otherwise = i2 (take n xs, tail xs)

-- Catamorfismo: Combina as janelas calculadas
combineWindows (ys,xs) = (either (const []) (\(window, rest) -> sum (zipWith (*) (window) ys) : rest)) xs

-- TODO: Implementar uma versão pointwise mais orientada às funções disponibilizadas 

