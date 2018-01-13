import Foundation

var graph: [String : [String]] = [:]

graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "johny"]
graph["anuj"] = [String]()
graph["peggy"] = [String]()
graph["thom"] = [String]()

func breadthFirstSearch(in graph: [String: [String]], start: String, test: ((String) -> Bool)) -> Bool {
    
    var searchQueue = [String]()
    
    guard let firstQueue = graph[start] else {
        print("Start element have no neighbours")
        return false
    }
    
    searchQueue.append(contentsOf: firstQueue)
    
    var searched = [String]()
    
    while !searchQueue.isEmpty {
        
        let current = searchQueue.removeFirst()
        
        if (!searched.contains(current)) {
            
            if test(current) {
                
                print("\(current) found")
                return true
                
            } else {
                
                searchQueue += graph[current] ?? []
                searched.append(current)
                
            }
        
        }
        
    }
    
    return false
}

let notFoundResult = breadthFirstSearch(in: graph, start: "you") { $0 == "test" }
let foundResult = breadthFirstSearch(in: graph, start: "you") { $0 == "peggy" }
