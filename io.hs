import System.Environment
import Control.Applicative
import Control.Monad

{-

Functions --

  getArgs :: IO [String]
  putStrLn :: IO String
  readFile :: String -> String
  lines :: String -> [String]
  void :: IO a -> IO ()

Abstractions --
  Applicative, Monad:

    <$>, <*>, >>=, =<<, pure


Note, standard library lists --
  Cons (`:.`) is just `:`
  Nil is `[]`

Problem --
  Given a single argument of a file name, read that file,
  each line of that file contains the name of another file,
  read the referenced file and print out its name and contents.

Example --
Given file files.txt, containing:
  a.txt
  b.txt
  c.txt

And a.txt, containing:
  the contents of a

And b.txt, containing:
  the contents of b

And c.txt, containing:
  the contents of c

$ runhaskell io.hs "files.txt"
============ a.txt
the contents of a

============ b.txt
the contents of b

============ c.txt
the contents of c

-}

-- getArgs :: IO [String]
-- Hint: use getArgs and run
main :: IO ()
main = undefined

--
-- Hint: use getFiles and printFiles
run :: String -> IO ()
run = undefined

getFiles :: [String] -> IO [(FilePath, String)]
getFiles = undefined

getFile :: FilePath -> IO (FilePath, String)
getFile = undefined

printFiles :: [(FilePath, String)] -> IO ()
printFiles = undefined

printFile :: FilePath -> String -> IO ()
printFile  = undefined
