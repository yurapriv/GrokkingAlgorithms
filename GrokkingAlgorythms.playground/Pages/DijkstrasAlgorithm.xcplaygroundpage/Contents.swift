import Foundation

var graph: [String : [String: Int]] = [:]

graph["start"] = ["a": 6, "b": 2]
graph["a"] = ["fin": 1]
graph["b"] = ["a": 3, "fin": 5]
graph["fin"] = [:]

var costs: [String: Int] = [:]

costs["a"] = 6
costs["b"] = 2
costs["fin"] = Int.max

var parents: [String: String] = [:]

parents["a"] = "start"
parents["b"] = "start"
parents["fin"] = ""

var processed = [String]()

func findLowestCostNode(_ costs: [String: Int]) -> String? {
    
    var lowestCost = Int.max
    var lowestCostNode: String? = nil
    
    for node in costs.keys {
        
        let cost = costs[node]!
        
        if (cost < lowestCost && !processed.contains(node)) {
            
            lowestCost = cost
            lowestCostNode = node
            
        }
        
    }
    
    return lowestCostNode
}

func dijkstrasAlgorythm() {
    
    let node = findLowestCostNode(costs)
    
    while let node = node {
        
        let cost = costs[node]!
        let neighbours = graph[node]!
        
        for neighbour in neighbours.keys {
            
            let newCost = cost + neighbours[neighbour]!
            
            if costs[neighbour]! > newCost {
                
                costs[neighbour] = newCost
                parents[neighbour] = node
                
                processed.append(node)
            }
            
        }
        
    }
    
}

dijkstrasAlgorythm()
