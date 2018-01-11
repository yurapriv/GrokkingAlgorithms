import Foundation

let testArray = [1, 1, 1, 4, 6]

func sumElements(in array: [Int]) -> Int {
    
    if array.count == 0 {
        return 0
    } else {
        return array.first! + sumElements(in: Array(array.dropFirst()))
    }
}

sumElements(in: testArray)


func countElements(in array: [Int]) -> Int {
    
    let element = array.first
    
    if element != nil {
        
        return 1 + countElements(in: Array(array.dropFirst()))
        
    } else {
        
        return 0
        
    }
}

countElements(in: testArray)

func binarySearch<T: Comparable>(_ item: T , in list: [T], high: Int, low: Int) -> Int? {
    
    var low = low
    var high = high
    let mid = (low + high) / 2
    
    let guess = list[mid]
    
    guard low <= high else { return nil }
    
    if guess == item {
        return mid
    } else {
        
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
        
        return binarySearch(item, in: list, high: high, low: low)
    }
}

binarySearch(7, in: testArray, high: testArray.count - 1, low: 0)

