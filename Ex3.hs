import List
import Cp

convolve :: Num a => [a] -> [a] -> [a]
convolve = ((ap . split ((uncurry hyloList .) (curry combineWindows >< curry generateWindows) . (id >< p2)) (pad . p2)) .) . (curry (split (reverse . p2) (id >< length)))

-- Adiciona zeros no início e no final para permitir os deslocamentos
pad :: Num a => ([a],Int) -> [a]
pad = conc . split p2 conc . (id >< ap . split replicate (const 0)) . (id >< ap . split (-) (const 1))

-- Anamorfismo: Gera as janelas de convolução
--generateWindows :: Num a => (Int,[a]) -> Either () ([a],[a])
generateWindows = cond (uncurry (>) . (id >< length)) (const i1()) (i2 . split (uncurry take) (tail . p2))

-- Catamorfismo: Combina as janelas calculadas
combineWindows :: Num a => ([a],Either () ([a],[a])) -> [a]
combineWindows = ap . ((\ys -> either (const []) (conc . split (singl . sum . (zipWith (*) ys) . p1) (p2))) >< id)
