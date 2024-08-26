class Solution {
  int searchInsert(List<int> nums, int target) {
    var start = 0;
    var end = nums.length - 1;
    var mid = 0;
    while (start <= end) {
      mid = start + (end - start) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }

    return start;
  }
}

void main() {
  final sl = Solution();

  // // Tc1 - 2
  // final data1 = [1, 3, 5, 6];
  // print('Result: ${sl.searchInsert(data1, 5) == 2}');

  // // Tc2 - 1
  // final data2 = [1, 3, 5, 6];
  // print('Result: ${sl.searchInsert(data2, 2) == 1}');

  // Tc3 == 4
  final data3 = [1, 3, 5, 6];
  print('Result: ${sl.searchInsert(data3, 7)==4}');

  // Tc4 - 1
  final data4 = [1, 3];
  print('Result: ${sl.searchInsert(data4, 2) == 1}');

  // Tc5
  final data5 = [3];
  print('Result: ${sl.searchInsert(data5, 3) == 0}');

  // Tc6
  final data6 = [1, 3];
  print('Result: ${sl.searchInsert(data6, 3)}');

  // Tc7
  final data7 = [1, 3, 5];
  print('Result: ${sl.searchInsert(data7, 4)}');

  // Tc8
  final data8 = [1, 3, 5, 6];
  print('Result: ${sl.searchInsert(data8, 2)}');

  // Tc9 - 2
  final data9 = [1, 4, 6, 7, 8, 9];
  print('Result: ${sl.searchInsert(data9, 6)}');

  //  // Tc10 - 1
  final data10 = [1, 2, 3, 4, 5, 10];
  print('Result: ${sl.searchInsert(data10, 2) == 1}');

  //  // Tc10 - 1
  final data11 = [3, 6, 7, 8, 10];
  print('Result: ${sl.searchInsert(data11, 5) == 1}');
}
