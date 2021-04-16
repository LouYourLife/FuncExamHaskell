{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_OpenGLRaw (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [3,3,4,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\bin"
libdir     = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\lib"
dynlibdir  = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\lib"
datadir    = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\share"
libexecdir = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\libexec"
sysconfdir = "C:\\Users\\vnord\\AppData\\Roaming\\cabal\\store\\ghc-9.0.1\\OpenGLRaw-3.3.4.0-23e4465a8cfa3477e3b8b0dcecdd7f149bc30d6b\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "OpenGLRaw_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "OpenGLRaw_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "OpenGLRaw_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "OpenGLRaw_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "OpenGLRaw_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "OpenGLRaw_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
