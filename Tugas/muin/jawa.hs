-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Template where

import Data.List

-- 1.a :) second restart on the reimplementation journey

-- Difficulty: Easy
null' :: [a] -> Bool
null' [] = True
null' (x:xs) = False

--classic pattern mathing, if list empty = True, Else False

-- Difficulty: Medium
take' :: Int -> [a] -> [a] --basically use int number to "take" element on a list
take' n [] = [] -- if those are empty list will return empty list
take' 0 _ = [] -- vice versa,  take nothing on the list will return empty ist
take' n (x:xs) = x : take' (n-1) xs -- the main pattern mathing and recursion,

-- example : take' 1 (1:[2,3,4]) = [1] : take' 1-1 ([2,3,4])
-- take' 0 [2,3,4] = [1]:[]

-- 

-- Difficulty: Medium
drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs

-- contoh= drop' 3 dari List
-- jika drop' 3 dari [1,2,3,4,5] = [4,5]
-- maka drop' 3 ([1,2,3]:[4,5]) = drop' (3-1) dari [1,2,3] + [4,5] => [3,4,5]
-- drop' 2  dari [1,2,3,4,5] = drop' (2-1) dari [1,2] + [3,4,5] => [2,3,4,5]
-- drop' 1  dari [1,2,3,4,5] = drop' (1-1) dari [1]+[2,3,4,5] = [1,2,3,4,5]
-- seterusnya, drop' 0 dari [1,2,3,4,5] maka [1,2,3,4,5]
--pembatas

-- Difficulty: Very Easy
fst' :: (a, b) -> a
fst' (a, b) = a

-- returning first item from the tuples

-- Difficulty: Very Easy
snd' :: (a, b) -> b
snd' (a,b) = b

-- returning secong item from the tuples
-- Difficulty: Hard

map' :: (a -> b) -> [a] -> [b] -- map' menerima dua argumen:  fungsi dari tipe a -> b  list berisi elemen bertipe a dan hasilnya:  list baru berisi elemen bertipe b.
map' _ [] = [] -- Kalau list yang masuk kosong ([]), yaudah hasilnya juga kosong.
map' f (x:xs) = f x : map' f xs -- Ambil fungsi f, terapkan ke elemen pertama x. hasilnya f x, terus panggil lagi map' untuk sisa list xs.
-- abis itu gabungin hasil fx ke sisa list  ( fx : map' f xs) 
-- CONTOH:
-- map' (*2) [1,2,3]
-- = (*2) 1 : map' (*2) [2,3] 
-- = 2 : map' (*2) [2,3]
-- = 2 : ((*2) 2 : map' (*2) [3])
-- = 2 : (4 : map' (*2) [3])
-- = 2 : (4 : ((*2) 3 : map' (*2) []))
-- = 2 : (4 : (6 : []))
-- = [2,4,6]


--pembatas

-- Difficulty: Hard
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = [] -- Jika list input kosong, hasilnya pasti list kosong.
filter' f (x:xs) 
  | f x = x : filter' f xs -- Jika anuan (f) = True pada elemen 'x', masukkan 'x' ke output dan lanjut rekursi.
  |otherwise = filter' f xs --Jika predikat False, buang 'x' dan lanjut rekursi pada sisa list.
-- note: f bisa berupa >, <, =  diikuti Int biasanay (nanti cek dokumentasi dah)
-- contoh filter' (>2) [1,2,4]
-- berarti dicari >2 di [1] : [2,4]
-- [1] false berarti hilang
-- lanjut filter' [2]:[4]
-- [2] dan [4] masuk
-- jadi hasilnya akn [2,4]
--pembatas

-- Difficulty: Medium
delete' :: Eq a => a -> [a] -> [a]
delete' _ [] = []
delete' n (x:xs)
    | n == x = xs -- if the n = head of the list "x" then return rest of the list
    | otherwise = x : delete' n xs -- else return the tail
-- pemabtas 

deleteAll' :: Eq a => a -> [a] -> [a]
deleteAll' _ [] = []
deleteAll' n (x:xs)
  | n == x = deleteAll' n xs
  | otherwise = x : deleteAll' n xs

--deletAll' masukan apapun kalau list kosong maka kosong
-- deletall' masukan "n" ke dalam list yang harus ada  "n" maka
-- | n == x = deleteAll' n xs yang artinya n harus sama dengan elemen yang ada di List
-- jika ya maka akan secara recursive dipanggil ke sisa list (xs)
-- jika tidak match maka n akan dipanggil ke sisa list (lagi)
-- perbedaan denga delete fungsi ini mengambil semua yang equal dengan "n"
-- sementara delete' hanya mengambil di list pertama yang equal dgn  "n"
--
-- Difficulty: Hard
myFoldl' :: (b -> a -> b) -> b -> [a] -> b
myFoldl' f anu []     = anu -- kalau kosong balikin value anuan sebelumnya
myFoldl' f anu (x:xs) = myFoldl' f (f anu x) xs 
---- 2. Update anu dulu, baru jalan lagi CONTOH:
-- foldl (+) 0 [1,2,3,4]
-- = foldl (+) (0+1) [2,3,4]
-- = foldl (+) ((0+1)+2) [3,4]
-- = foldl (+) (((0+1)+2)+3) [4]
-- = foldl (+) ((((0+1)+2)+3)+4) []
-- = ((((0+1)+2)+3)+4)
--  = 10

--pembatas

-- Difficulty: Hard
foldl1' :: (a -> a -> a) -> [a] -> a
foldl1' _ []     = error " empty list"
foldl1' f [x]    = x  -- Single element list (ini pembeda dari foldl biasa)
foldl1' f (x:xs) = foldl' f x xs  -- pake x as initial accumulator

--pembatas

-- Difficulty: Medium
zip' x = x

--pembatas

-- Difficulty: Hard
zipWith' x = x

--pembatas

-- Difficulty: Easy
nth' x = x

--pembatas

-- Difficulty: Hard
scanl' x = x

--pembatas

-- Difficulty: Hard
scanl1' x = x

--pembatas

-- Difficulty: Hard
elem' x = x

--pembatas

-- Difficulty: Hard
notElem' x = x

--pembatas

-- Difficulty: Very Easy
head' x = x

--pembatas

-- Difficulty: Medium
length' :: [a] -> Int -- aslinya mah length' :: Foldable t => t a -> Int, diganti jadi list yang menghasilkan Int
length' [] = 0 --base case 
length' (_:xs) = 1 + length' xs -- jikalau ada isinya ya tinggal ditambah satu + sampai ujung list

--pembatas

-- Difficulty: Medium
reverse' :: [a] -> [a] 
reverse' [] = [] -- kosong ya kosong seperti biasa
reverse' (x:xs) = reverse' xs ++ [x] -- bongkar list pala dan tail, jadikan tail ++ list kepala, (Hasil Balikan Ekor) ++ [Si Kepala]

--pembatas

-- Difficulty: Very Easy
last' :: [a] -> a
last' [] = error "List kosong anjay"
last' [x] = x -- ini adalah kiblat si last jika sisa satu doang list nya yaudah berenti itu hasilnya bang
last' (_:xs) = last' xs -- appaun pala nya kalau masih ada sisa oper aja ke xs, nanti di cek terus sampe nemu [x] = x

--pembatas

-- Difficulty: Very Easy
tail' :: [a] -> [a]
tail' [] = error "List kosong ga punya buntut, bos!"
tail' (x:xs) = xs -- ambil kode buntut
--pembatas

-- Difficulty: Very Easy
init' :: [a] -> [a]
init' [] = []
init' [x] = [] -- -- Base Case: sisa satu? habisin! Jadi []
init' (x:xs) = x: init' xs -- rekursi di sini, simpan depan, proses belakang -- "Visualisasi Jalanin init' [1, 2, 3]
    -- CONTOH:
--Cek [1, 2, 3]: Simpan 1. gabung dengan hasil init' [2, 3]. rumus: 1 : (hasil nanti) Cek [2, 3]:
--Simpan 2. ++ dengan hasil init' [3].
--Rumus: 1 : (2 : (hasil nanti))
--Cek [3]:Apakah cuma satu? YA!
--Balikin []. (inilah saatnya si 3 dieksekusi mati).
--Susun Balik:
--1 : (2 : [])
--Jadinya: [1, 2] 

--pembatas


-- Difficulty: Easy
max' x = x

--pembatas

-- Difficulty: Easy
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

sort' x=x

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

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
