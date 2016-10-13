type Peg = String

hanoi :: Integer -> Peg -> Peg -> Peg -> [(Integer, Peg, Peg)] -- I changed the Move command as I wanted to include the disk number too.

hanoi 0 _ _ _ = []-- stopping point for the recursive function as 0 disks need zero moves.



{- z = number of disks, src = source of disk,
spare = temporary peg for disk,
dest = destination of disk
-}

hanoi z src dest spare = hanoi (z-1) src spare dest        -- adds recursion. Also moves the disk from the src peg to the spare peg using dest peg.
                         ++ [(z, src, dest)] ++            -- 'prints' the move
                         hanoi (z-1) spare dest src        -- moves the disk from the spare peg to the destination using src
