import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import qualified Data.Text as T

main :: IO ()
main = hspec $ do
    describe "Sieve of Eratosthenes" $ do
        it "calculate the lower bound" $ do
          eratosthenes [2] `shouldBe` [2]
  
eratosthenes :: [Int] -> [Int]
eratosthenes all = []
