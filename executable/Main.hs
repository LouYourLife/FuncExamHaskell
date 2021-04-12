-- It is generally a good idea to keep all your business logic in your library
-- and only use it in the executable. Doing so allows others to use what you
-- wrote in their libraries.
import qualified TestMe

main :: IO ()
main = TestMe

-- cabal repl (start and run code in bash, will load all modules added in cabal file)
-- :show modules (viser hvad der er loaded og kan bruges)

-- :load TestMe (loader den ene fil og ikke alle andre, hvor brugbart er det?)
-- :type add3D (show function)
-- let v1 = Vector3D 1 2 3 (Make a Vector3D object)
-- add3D v1 v2 (runs function add3D with created objects)

-- :help (good to know)
-- :reload (renser)
