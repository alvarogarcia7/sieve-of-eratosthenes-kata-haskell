import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import qualified Data.Text as T

main :: IO ()
main = hspec $ do
    describe "Sieve of Eratosthenes" $ do
        it "calculate the lower bound" $ do
          eratosthenes [2] `shouldBe` [2]

        it "calculate the first 10 primes" $ do
          eratosthenes [2..29] `shouldBe` [2,3,5,7,11,13,17,19,23,29]


eratosthenes :: [Int] -> [Int]
eratosthenes candidates = eratosthenes' [] candidates

eratosthenes' :: [Int] -> [Int] -> [Int]
eratosthenes' primes [] = primes 
eratosthenes' primes (x:xs) = eratosthenes' (primes++[x]) (  filter (\i -> i `mod` x /= 0) xs )
