

func findSmallest(in array: [Int]) -> (offset: Int, element: Int) {
    
    var smallest = (offset: 0, element: array.first!)
    
    for index in 1..<array.count {
        
        let currentValue = array[index]
        
        if currentValue < smallest.element {
            smallest = (index, currentValue)
        }
        
    }
    
    return smallest
}

func selectionSort(array: [Int]) -> [Int] {
    
    var newArray = [Int]()
    var unorderedArray = array
    
    for _ in 0..<array.count {
        
        let smallest = findSmallest(in: unorderedArray)
        
        newArray.append(smallest.element)
        unorderedArray.remove(at: smallest.offset)
        
    }
    
    return newArray
}

let intArray = [5, 3, 6, 2, 10]

selectionSort(array: intArray)
