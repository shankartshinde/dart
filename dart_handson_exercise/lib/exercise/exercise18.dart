/*
Exercise 18
As you may have guessed, we are trying to build up to a full tic-tac-toe board.
For now, we will simply focus on checking whether someone has WON the game, not worrying about how the moves were made.

If a game of Tic Tac Toe is represented as a list of lists, like so:

game = [[1, 2, 0],
        [2, 1, 0],
        [2, 1, 1]]
where a 0 means an empty square, a 1 means that player 1 put their token in that space, and a 2 means that player 2 put their token in that space.

Your task: given a 3 by 3 list of lists that represents a Tic Tac Toe game board, tell whether anyone has won, and tell which player won, if any.

A Tic Tac Toe win is 3 in a row - either in a row, a column, or a diagonal. Don’t worry about the case where TWO people have won - assume that in every board there will only be one winner.
*/

void checkWhoIsWinner(List<List<int>> twoDArray) {
  const firstUser = 1;
  const secondUser = 2;
  //const emptyBoard = 0;

  int isFirstUserFoundRowwise = 0;
  int isSecondUserFoundRowwise = 0;

  int isFirstUserFoundColumnWise = 0;
  int isSecondUserFoundColumnWise = 0;

  int isFirstUserFoundPrimaryDiagonally = 0;
  int isSecondUserFoundPrimaryDiagonally = 0;

  int isFirstUserFoundSecondaryDiagonally = 0;
  int isSecondUserFoundSecondaryDiagonally = 0;

  bool isWinnerFound = false;
  int matrixLength = twoDArray.length;
  for (int row = 0; row < matrixLength; row++) {
    // Reset user entries count to 0
    isFirstUserFoundRowwise = 0;
    isSecondUserFoundRowwise = 0;

    // Reset user entries count to 0
    isFirstUserFoundColumnWise = 0;
    isSecondUserFoundColumnWise = 0;

    for (int col = 0; col < matrixLength; col++) {
      int userInputRowWise = twoDArray[row][col];
      //This condition - comparing user one entry
      if (userInputRowWise == firstUser) {
        isFirstUserFoundRowwise++;
      }

      //This condition - comparing user two entry
      if (userInputRowWise == secondUser) {
        isSecondUserFoundRowwise++;
      }

      //This condition - comparing user one entry columnwise
      int userInputColumnWise = twoDArray[col][row];
      if (userInputColumnWise == firstUser) {
        isFirstUserFoundColumnWise++;
      }

      //This condition - comparing user two entry
      if (userInputColumnWise == secondUser) {
        isSecondUserFoundColumnWise++;
      }

      // Here we are checking primary diagonally => \
      if (row == col) {
        if (userInputRowWise == firstUser) {
          isFirstUserFoundPrimaryDiagonally++;
        }

        //This condition - comparing user two entry
        if (userInputRowWise == secondUser) {
          isSecondUserFoundPrimaryDiagonally++;
        }
      }

      // Here we are checking secondary diagonally => \ (row + col = Matrix degree(row, col) -1  )
      if ((row + col) == matrixLength - 1) {
        if (userInputRowWise == firstUser) {
          isFirstUserFoundSecondaryDiagonally++;
        }

        //This condition - comparing user two entry
        if (userInputRowWise == secondUser) {
          isFirstUserFoundSecondaryDiagonally++;
        }
      }
    }

    if (isFirstUserFoundRowwise == 3 || isFirstUserFoundColumnWise == 3) {
      print("First user win");
      isWinnerFound = true;
      break;
    }
    if (isSecondUserFoundRowwise == 3 || isSecondUserFoundColumnWise == 3) {
      print("Second user win");
      isWinnerFound = true;
      break;
    }
  }

  if (isFirstUserFoundPrimaryDiagonally == 3 ||
      isFirstUserFoundPrimaryDiagonally == 3) {
    print("First user win diagonally");
    isWinnerFound = true;
  }
  if (isSecondUserFoundPrimaryDiagonally == 3 ||
      isFirstUserFoundSecondaryDiagonally == 3) {
    print("Second user win diagonally");
    isWinnerFound = true;
  }

  if (!isWinnerFound) {
    print("No result :: Game is tie");
  }
}

void exercise18() {
  // Second user win Column wise
  List<List<int>> twoDArray1 = [
    [2, 2, 0],
    [2, 1, 0],
    [2, 1, 1]
  ];
  checkWhoIsWinner(twoDArray1);

// Second user win secondary diagonally
  List<List<int>> twoDArray2 = [
    [2, 1, 2],
    [1, 2, 0],
    [2, 1, 1]
  ];
  checkWhoIsWinner(twoDArray2);

// First user win primary diagonally 
  List<List<int>> twoDArray3 = [
    [1, 2, 0],
    [2, 1, 2],
    [2, 1, 1]
  ];
  checkWhoIsWinner(twoDArray3);

// Second user win row wise
  List<List<int>> twoDArray4 = [
    [1, 1, 0],
    [2, 2, 2],
    [2, 1, 1]
  ];
  checkWhoIsWinner(twoDArray4);

// TIE result
  List<List<int>> twoDArray5 = [
    [1, 2, 1],
    [2, 1, 2],
    [2, 1, 2]
  ];

  checkWhoIsWinner(twoDArray5);
}

/*
Home work
 [
    [(0,0), (0,1), (0,2), (0,3)],
    [(1,0), (1,1), (1,2), (1,3)],
    [(2,0), (2,1), (2,2), (2,3)],
    [(3,0), (3,1), (3,2), (3,3)],
  ]
  m = 4 and n = 4
  Expression  i + j = Matrix degree(m,n) - 1
*/