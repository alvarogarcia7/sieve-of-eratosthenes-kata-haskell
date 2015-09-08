import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
    describe "Sieve of Eratosthenes" $ do
        it "calculate the lower bound" $ do
          eratosthenes 2 `shouldBe` [2]

        it "calculate the first 10 primes" $ do
          eratosthenes 29 `shouldBe` [2,3,5,7,11,13,17,19,23,29]

        it "calculate only primes" $ do
          eratosthenes 4 `shouldBe` [2,3]

        it "calculate below 2" $ do
          eratosthenes 1 `shouldBe` []

eratosthenes :: Int -> [Int]
eratosthenes upperBound = eratosthenes' [] [2..upperBound] 

eratosthenes' :: [Int] -> [Int] -> [Int]
eratosthenes' primes [] = primes 
eratosthenes' primes (x:xs) = eratosthenes' (primes++[x]) (  filter (\i -> i `mod` x /= 0) xs )
