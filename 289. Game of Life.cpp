class Solution {
  public:
      void gameOfLife(vector<vector<int>>& board) {
          multimap<int, int> record;
          int i, j, row, col, count;
          for (i = 0, row = board.size(), col = board[0].size(); i < row; i++) {
              for (j = 0; j < col; j++) {
                  count = 0;
                  if (j > 0){
                      if (i > 0)
                          count += board[i-1][j-1];
                      if (i < row - 1)
                          count += board[i+1][j-1];
                      count += board[i][j-1];
                  }
                  if (j < col - 1) {
                      if (i > 0)
                          count += board[i-1][j+1];
                      if (i < row - 1)
                          count += board[i+1][j+1];
                      count += board[i][j+1];
                  }
                  if (i > 0)
                      count += board[i-1][j];
                  if (i < row - 1)
                      count += board[i+1][j];
                  if (board[i][j]){
                      if (count < 2 || count > 3)
                          record.emplace(i,j);
                  }
                  else{
                      if (count == 3)
                          record.emplace(i,j);
                  }
              }
          }
          for (auto it = record.begin(); it != record.end(); it++)
              board[it->first][it->second] ^= 1;
      }
  };