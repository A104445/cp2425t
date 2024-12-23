import Cp
import List
import Data.List
import Exp

hindex = hyloList f g

g [] = i1()
g xs = (i2 . split p1 (uncurry delete) . split minimum id) xs

f = either (const (0,[])) (cond (uncurry (>=) . (id >< succ . p1)) (split (succ . p1 . p2) (conc . swap . (singl >< p2))) p2)