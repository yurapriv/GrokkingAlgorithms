
/// Binary search algorythm implementation
///
/// - Parameters:
///   - list: Array of Comparable items
///   - item: Item to find
/// - Returns: Index of found item or nil if it not exists
func binarySearch<T: Comparable>(_ item: T , in list: [T]) -> Int? {
    
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        
        let mid = (low + high) / 2
        
        let guess = list[mid]
        
        if guess == item {
            return mid
        }
        
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
        
    }
    
    return nil
}

let intList = [1, 3, 5, 7, 9, 10, 34]
let stringList = ["hello", ",", "World", "!"]
let doubleList = [23.4, 12.454, 234.343, 2.2]


binarySearch(4, in: intList)
binarySearch(9, in: intList)
binarySearch(",", in: stringList)
binarySearch(234.343, in: doubleList)
