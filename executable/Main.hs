import qualified Drawing

main :: IO ()
main = Drawing.main

--import Graphics.Gloss

--main :: IO ()
--main = display FullScreen white (Circle 80)

-- cabal repl (start and run code in bash, will load all modules added in cabal file)
-- :show modules (viser hvad der er loaded og kan bruges)

-- :load TestMe (loader den ene fil og ikke alle andre, hvor brugbart er det?)
-- :type add3D (show function)
-- let v1 = Vector3D 1 2 3 (Make a Vector3D object)
-- add3D v1 v2 (runs function add3D with created objects)

-- :help (good to know)
-- :reload (renser)
