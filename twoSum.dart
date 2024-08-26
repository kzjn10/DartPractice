// The time complexity of the `twoSum` function is O(n)
//  because we iterate through the `nums` list once to 
//  check if the complement of the current element exists in the map. 
//  The space complexity is O(n) as well because we store at 
//  most n key-value pairs in the map where n is the number of elements 
//  in the `nums` list.


class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var map = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      if (map.containsKey(nums[i])) {
        return [map[nums[i]]!, i];
      } else {
        map[target - nums[i]] = i;
      }
    }

    return [];
  }
}

void main() {
  final sl = Solution();

  final data1 = [2, 7, 11, 15];
  print('Result: ${sl.twoSum(data1, 9)}');

  final data2 = [3, 2, 4];
  print('Result: ${sl.twoSum(data2, 6)}');

  final data3 = [3, 3];
  print('Result: ${sl.twoSum(data3, 6)}');
}
