import Cp
import List
import Exp

--2.1

primes = anaList g

g 1 = i1()
g n = (i2 . split p2 (uncurry div) . split id (head . ap . split (filter . ((==0) .) . mod) (conc . split ((2:) . enumFromThenTo 3 5 . floor . sqrt . fromIntegral) singl))) n

-- maneira eficiente:
-- depois ponho aqui

--2.2

prime_tree = Term 1 . untar . map (split primes id)
