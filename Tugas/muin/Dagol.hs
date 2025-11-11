-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Template where

import Data.List

-- memberukan value berupaa boolean true jika list kosong dan sebaliknya

null' [] = True
null' (x:xs) = False

-- take 3 dari 1..10
-- langkah 1 : take n tapi list kosong = []
-- langkah 2 : take' 3 (1:2,3,4,5) =

take' n [] = []
take' 0 _ = []
take' n (x:xs) = x : take' (n-1) xs

--fungsi drop' int -> [a] -> [a]
-- if n >= [a] = [] (Habis)
-- if n <= [a] = [a]

drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs

-- drop' 3 dari List
-- jika drop' 3 dari [1,2,3,4,5] = [4,5]
-- maka drop' 3 ([1,2,3]:[4,5]) = drop' (3-1) dari [1,2,3] + [4,5] => [3,4,5]
-- drop' 2  dari [1,2,3,4,5] = drop' (2-1) dari [1,2] + [3,4,5] => [2,3,4,5]
-- drop' 1  dari [1,2,3,4,5] = drop' (1-1) dari [1]+[2,3,4,5] = [1,2,3,4,5]
-- seterusnya, drop' 0 dari [1,2,3,4,5] maka [1,2,3,4,5]

tin m = m + 1

-- fst :: (a,b) -> a
-- mengembalikan item pertama dari tuples

fst' (a,b) = a

--mengembalikan item kedua dari tuples

snd' (a,b) = b

--map :: (a -> b) -> [a] -> [b]
-- mamasukan fungsi ke dalam list yang ditentukan


map' n = n

-- filter :: (a -> Bool) -> [a] -> [a]
-- filter memasukan fungsi boolean kepada list untuk mengambil
-- list dan dikembalikan menjadi list

filter' x = x


-- filter' :: (a -> Bool) -> [a] -> [a]


--delete :: Eq a => a -> [a] -> [a]
-- delete akan menghasilkan list yang telah dikurangi oleh "a"
-- syarat nya "n" harus berada di dalam list, jika tidak maaka akan mengembalikan
-- list tana ada perubahan

delete' _ [] = [] --delete' masukan apapun kalau list kosong ya kosong
delete' n (x:xs) -- masukan n kepada [list] maka akan menegembalikan sisa list kalau ->
  | n == x = xs -- kalau n bearada di dalam list maka kembalikan sisa list
  | otherwise = x : delete' n xs -- kalau tidak equal maka kembalikan list

--deleteAll :: Eq a => a -> [a] -> [a]
--deletAll' masukan apapun kalau list kosong maka kosing
-- deletall' masukan "n" ke dalam list yang harus ada  "n" maka
-- | n == x = deleteAll' n xs yang artinya n harus sama dengan elemen yang ada di List
-- jika ya maka akan secara recursive dipanggil ke sisa list (xs)
-- jika tidak match maka n akan dipanggil ke sisa list (lagi)
-- perbedaan denga delete fungsi ini mengambil semua yang equal dengan "n"
-- sementara delete' hanya mengambil di list pertama yang equal dgn  "n"

deleteAll' :: Eq a => a -> [a] -> [a]
deleteAll' _ [] = []
deleteAll' n (x:xs)
  | n == x = deleteAll' n xs
  | otherwise = x : deleteAll' n xs

--foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

foldl' x = x

--foldl1 :: Foldable t => (a -> a -> a) -> t a -> a (ini apa anjir)

foldl1' x = x

--zip :: [a] -> [b] -> [(a, b)], menggabungkan 2 list atau lebih ke dalam satu list

zip' x = x

--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' x = x

--pembatas

notElem' x = x

--pembatas

head' x = x

--pembatas

length' x = x

--pembatas

reverse' x = x

--pembatas

last' x = x

--pembatas

tail' x = x

--pembatas

init' x = x

--pembatas

max' x = x

--pembatas

min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
