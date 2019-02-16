import UIKit

func insertionSort(array: [Int]) -> [Int] {
    var output: [Int] = array
    for index in 1...output.count-1 {
        let current = output[index]
        var j = index - 1
        while j >= 0 && output[j] > current {
            output[j+1] = output[j]
            j = j - 1
        }
        output[j+1] = current
    }
    return output
}

let A: [Int] = [4,5,7,9,0,3,1,4,6,8]
let sortedA = insertionSort(array: A)
print(sortedA)

