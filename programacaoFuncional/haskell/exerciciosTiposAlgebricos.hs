--1.
data Estacao = Verao | Outono | Inverno | Primavera
    deriving (Eq, Show, Read, Ord, Enum)

{-
Verao == Verao
Verao == Inverno
succ Verao
Verao <= Outono
Outono > Verao
-}

--2.
data CondicaoClimatica = Quente | Frio | Agradavel
    deriving (Eq, Show, Read, Ord, Enum)

{-
condicao :: Estacao -> CondicaoClimatica
condicao Verao = Quente
condicao Outono = Agradavel
condicao Inverno = Frio
condicao Primavera = Agradavel
-}

condicao :: Estacao -> CondicaoClimatica
condicao estacao 
    |estacao == Verao     = Quente
    |estacao == Outono    = Agradavel
    |estacao == Inverno   = Frio
    |otherwise = Agradavel

--3.
data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
    deriving (Eq, Show, Read, Ord, Enum)

dias :: Mes -> Int
dias Janeiro   = 31
dias Fevereiro = 28
dias Marco     = 31
dias Abril     = 30
dias Maio      = 31
dias Junho     = 30
dias Julho     = 31
dias Agosto    = 31 
dias Setembro  = 30
dias Outubro   = 31
dias Novembro  = 30
dias Dezembro  = 31

--4.
data Forma = Circulo Double     
   |Retangulo Double Double
   |Triangulo Double Double
    deriving (Eq, Show, Read, Ord)

pin = 3.1416

area :: Forma -> Double
area (Circulo r)     = pin * r^2
area (Retangulo b h) = b * h
area (Triangulo b h) = (b * h)/2

--5.
eRedondo :: Forma -> Bool
eRedondo (Circulo _) = True
eRedondo _           = False

--6.
perimetro :: Forma -> Double
perimetro (Circulo r) = 2*pin*r 
perimetro (Retangulo b h) = (2*b)+(2*h)
perimetro (Triangulo b h) = b*3 -- o triangulo precisa ser equilatero, com base e altura nao é possivel saber o perimetro

--7.
{-
{-# LANGUAGE OverloadedStrings #-}
import CodeWorld

main = drawingOf ((mover (2, 5) (Retangulo 3 3 (0, 0))) & coordinatePlane)

data Forma = Circulo Double (Double, Double)     
   |Retangulo Double Double (Double, Double)
    deriving (Eq, Show, Read, Ord)
    
mover :: (Double, Double) -> Forma -> Picture
mover (x, y) (Circulo r (xc, yc)) = translated (xc+x) (yc+y) (solidCircle r)
mover (x, y) (Retangulo b h (xc, yc)) = translated (xc+x) (yc+y) (solidRectangle b h)
-}
