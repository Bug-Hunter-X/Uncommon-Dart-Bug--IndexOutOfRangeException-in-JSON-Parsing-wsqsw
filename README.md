# Uncommon Dart Bug: Handling Empty JSON Arrays

This repository demonstrates a common yet easily overlooked error in Dart when working with JSON data: attempting to access an index in a list without checking if the list is empty. This can lead to an `IndexOutOfRangeException`. The `bug.dart` file shows the problematic code, while `bugSolution.dart` presents a corrected and more robust approach.

## How to Reproduce

1. Clone the repository.
2. Run `bug.dart`.  If the API returns an empty array, the program will crash.
3. Run `bugSolution.dart` to see the corrected code that handles potential empty arrays gracefully.

## Bug Description

The primary issue is the lack of a check to ensure the JSON array is not empty before accessing elements. This can cause the program to unexpectedly terminate. 

## Solution

The solution involves adding a simple check to verify the length of the array before accessing elements.  Error handling is also enhanced for a better user experience.