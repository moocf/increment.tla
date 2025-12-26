-------------------------------- MODULE main --------------------------------

EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start") /\ (i = 0)

Pick == \/ /\ pc = "start"
           /\ i' \in 0..1000
           /\ pc' = "middle"

Add1 == \/ /\ pc = "middle"
           /\ i' = i + 1
           /\ pc' = "done"

Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Fri Dec 26 16:43:07 IST 2025 by wolfr
\* Created Fri Dec 26 15:53:13 IST 2025 by wolfr
\* DONE
