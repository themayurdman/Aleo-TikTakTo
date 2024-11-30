#!/bin/bash
# First check that Leo is installed.
if ! command -v leo &> /dev/null
then
    echo "leo is not installed."
    exit
fi
# Create a new game.
#shell_i
echo "
###############################################################################
########                                                               ########
########          STEP 0: Creating a new game of Tic-Tac-Toe           ########
########                                                               ########
########                         |   |   |   |                         ########
########                         |   |   |   |                         ########
########                         |   |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run new || exit

# Have the Player 1 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 1: Player 1 makes the 1st move.              ########
########                                                               ########
########                         | x |   |   |                         ########
########                         |   |   |   |                         ########
########                         |   |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 1u8 1u8 1u8 "{ r1: { c1: 0u8, c2: 0u8, c3: 0u8 }, r2: { c1: 0u8, c2: 0u8, c3: 0u8 }, r3: { c1: 0u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 2 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 2: Player 2 makes the 2nd move.              ########
########                                                               ########
########                         | x |   |   |                         ########
########                         |   | o |   |                         ########
########                         |   |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 2u8 2u8 2u8 "{ r1: { c1: 1u8, c2: 0u8, c3: 0u8 }, r2: { c1: 0u8, c2: 0u8, c3: 0u8 }, r3: { c1: 0u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 1 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 3: Player 1 makes the 3rd move.              ########
########                                                               ########
########                         | x |   |   |                         ########
########                         |   | o |   |                         ########
########                         | x |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 1u8 3u8 1u8 "{ r1: { c1: 1u8, c2: 0u8, c3: 0u8 }, r2: { c1: 0u8, c2: 2u8, c3: 0u8 }, r3: { c1: 0u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 2 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 4: Player 2 makes the 4th move.              ########
########                                                               ########
########                         | x |   |   |                         ########
########                         | o | o |   |                         ########
########                         | x |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 2u8 2u8 1u8 "{ r1: { c1: 1u8, c2: 0u8, c3: 0u8 }, r2: { c1: 0u8, c2: 2u8, c3: 0u8 }, r3: { c1: 1u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 1 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 5: Player 1 makes the 5th move.              ########
########                                                               ########
########                         | x |   |   |                         ########
########                         | o | o | x |                         ########
########                         | x |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 1u8 2u8 3u8 "{ r1: { c1: 1u8, c2: 0u8, c3: 0u8 }, r2: { c1: 2u8, c2: 2u8, c3: 0u8 }, r3: { c1: 1u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 2 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 6: Player 2 makes the 6th move.              ########
########                                                               ########
########                         | x | o |   |                         ########
########                         | o | o | x |                         ########
########                         | x |   |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 2u8 1u8 2u8 "{ r1: { c1: 1u8, c2: 0u8, c3: 0u8 }, r2: { c1: 2u8, c2: 2u8, c3: 1u8 }, r3: { c1: 1u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 1 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 7: Player 1 makes the 7th move.              ########
########                                                               ########
########                         | x | o |   |                         ########
########                         | o | o | x |                         ########
########                         | x | x |   |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 1u8 3u8 2u8 "{ r1: { c1: 1u8, c2: 2u8, c3: 0u8 }, r2: { c1: 2u8, c2: 2u8, c3: 1u8 }, r3: { c1: 1u8, c2: 0u8, c3: 0u8 } }" || exit

# Have the Player 2 make a move.
echo "
###############################################################################
########                                                               ########
########             STEP 8: Player 2 makes the 8th move.              ########
########                                                               ########
########                         | x | o |   |                         ########
########                         | o | o | x |                         ########
########                         | x | x | o |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 2u8 3u8 3u8 "{ r1: { c1: 1u8, c2: 2u8, c3: 0u8 }, r2: { c1: 2u8, c2: 2u8, c3: 1u8 }, r3: { c1: 1u8, c2: 1u8, c3: 0u8 } }" || exit

echo "
###############################################################################
########                                                               ########
########             STEP 9: Player 1 makes the 9th move.              ########
########                                                               ########
########                         | x | o | x |                         ########
########                         | o | o | x |                         ########
########                         | x | x | o |                         ########
########                                                               ########
###############################################################################
"
leo run make_move 1u8 1u8 3u8 "{ r1: { c1: 1u8, c2: 2u8, c3: 0u8 }, r2: { c1: 2u8, c2: 2u8, c3: 1u8 }, r3: { c1: 1u8, c2: 1u8, c3: 2u8 } }" || exit

echo "
###############################################################################
########                                                               ########
########               Game Complete! Players 1 & 3 Tied               ########
########                                                               ########
########                         | x | o | x |                         ########
########                         | o | o | x |                         ########
########                         | x | x | o |                         ########
########                                                               ########
###############################################################################
"
