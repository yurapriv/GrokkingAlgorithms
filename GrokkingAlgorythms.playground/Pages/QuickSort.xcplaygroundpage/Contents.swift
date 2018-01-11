
func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    
    if array.count < 2 {
        
        return array
        
    } else {
        
        let pivot = array.first!
        
        let less = array.filter { $0 < pivot }
        let equal = array.filter { $0 == pivot }
        let greater = array.filter { $0 > pivot }
        
        return quickSort(less) + equal + quickSort(greater)
    }
    
}

quickSort([10, 5, 2, 3])

let intArray = [5, 3, 6, 2, 10]
let stringList = ["hello", ",", "World", "!"]
let doubleList = [23.4, 12.454, 234.343, 2.2]

quickSort(intArray)
quickSort(stringList)
quickSort(doubleList)

