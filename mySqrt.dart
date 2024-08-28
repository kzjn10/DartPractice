class Solution {
  // int mySqrt(int x) {
  //   var i = 0;
  //   while (i * i <= x) {
  //     i++;
  //   }

  //   return i - 1;
  // }

  int mySqrt(int x) {
    if (x == 0 || x == 1) {
      return x;
    }

    var start = 1;
    var end = x;
    var mid = -1;
    while (start <= end) {
      mid = (start + (end - start) / 2).toInt();
      if (mid * mid == x) {
        return mid;
      } else if (mid * mid > x) {
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }

    return end;
  }
}

void main() {
  final sl = Solution();

print('Result: ${sl.mySqrt(3) == 1}');

  print('Result: ${sl.mySqrt(4) == 2}');

  print('Result: ${sl.mySqrt(8) == 2}');
}
