

func findSmallest<T: Comparable>(in array: [T]) -> (offset: Int, element: T) {
    
    var smallest = (offset: 0, element: array.first!)
    
    for index in 1..<array.count {
        
        let currentValue = array[index]
        
        if currentValue < smallest.element {
            smallest = (index, currentValue)
        }
        
    }
    
    return smallest
}

func selectionSort<T: Comparable>(array: [T]) -> [T] {
    
    var newArray = [T]()
    var unorderedArray = array
    
    for _ in 0..<array.count {
        
        let smallest = findSmallest(in: unorderedArray)
        
        newArray.append(smallest.element)
        unorderedArray.remove(at: smallest.offset)
        
    }
    
    return newArray
}

let intArray = [5, 3, 6, 2, 10]
let stringList = ["hello", ",", "World", "!"]
let doubleList = [23.4, 12.454, 234.343, 2.2]

selectionSort(array: intArray)
selectionSort(array: stringList)
selectionSort(array: doubleList)
