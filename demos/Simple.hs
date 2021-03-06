-- This is indended to be the simplest possible use of
-- Data.Binary.Serialise.CBOR.
module Main
  ( main -- :: IO ()
  ) where

import           Data.Binary.Serialise.CBOR as CBOR
import qualified Data.ByteString.Lazy       as BL

a :: [ Int ] -- full type definition required
a = [ 1, 2, 3 ]

-- Don't output to the terminal: the created ByteString will contain non 7-bit
-- ASCII characters.
main :: IO ()
main = BL.writeFile "outfile.cbor" (CBOR.serialise a)
