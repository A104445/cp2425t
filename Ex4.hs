import Cp

--4.1

data Expr b a = V a | N b | T Op [Expr b a] deriving (Show, Eq)
data Op = ITE | Add | Mul | Suc deriving (Show, Eq)

inExpr = either V (either N (uncurry T))
baseExpr g h f = g -|- (h -|- id >< map f)

outExpr(V a) = i1 a
outExpr(N b) = (i2 . i1) b
outExpr(T op l) = (i2 . 12) (op,l)

--recExpr x = baseExpr id id x

recExpr = baseExpr id id

cataExpr g = g . (recExpr (cataExpr g)) . outExpr
anaExpr g = inExpr . (recExpr (anaExpr g)) . g
hyloExpr h g = cataExpr h . anaExpr g

--4.2

instance Monad (Expr b) where
    return  = V
    (V a) >>= g = g a
    (N b) >>= g = N b
    (T op l) >>= g = T op (map (`>>=` g) l)

-- NÃO SEI SE ESTÁ CERTO !!!

--4.3

--mcataExpr g =

--4.4

--let_exp =

--4.5

--evaluate =
