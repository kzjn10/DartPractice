class Solution {
  int findDuplicate(List<int> nums) {
    int start = 1;
    int end = nums.length;
    int temp = -1;
    while (start <= end) {
      int mid = (start + end) ~/ 2;
      int countSmallerOrEqual = 0;
      nums.forEach((e) {
        if (e <= mid) countSmallerOrEqual++;
      });

      if (countSmallerOrEqual > mid) {
        temp = mid;
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }
    return temp;
  }
}

void main() {
  final sl = Solution();

  final data1 = [1, 3, 4, 2, 2];
  print('Result: ${sl.findDuplicate(data1)}');

  final data2 = [3, 1, 3, 4, 2];
  print('Result: ${sl.findDuplicate(data2)}');

  final data3 = [3, 3, 3, 3, 3];
  print('Result: ${sl.findDuplicate(data3)}');
}
