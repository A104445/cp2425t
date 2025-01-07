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

mcataExpr :: Monad m => (a + (b + (Op, m [c])) -> m c) -> Expr b a -> m c
mcataExpr g = g .! (dl . recExpr (mcataExpr g) . outExpr)

dl :: Monad m => (a + (b + (Op, m [c]))) -> m (a + (b + (Op, m [c])))
dl = either (return.i1)(fmap i2. lstr)

--4.4

--let_exp :: (Num c) => (a -> Expr c b) -> Expr c a -> Expr c b
--let_exp =

--4.5

outOp (ITE,[Just a, Just b, Just c]) = Just (if a then b else c)
outOp (Add,[Just a, Just b]) = Just (a+b)
outOp (Mul,[Just a, Just b]) = Just (a*b)
outOp (Suc,[Just a]) = Just (a+1)
outOp _ = Nothing

evaluate :: (Num a, Ord a) => Expr a b -> Maybe a
evaluate = mcataExpr (either Nothing (either Just (>>= id)))

--evaluate = either Nothing (either Just (outOp (cataExpr evaluate))) . outExpr
