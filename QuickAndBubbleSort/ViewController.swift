import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var array = [3,-1,6,9,4,2,5,4]
        print ("Before Sorting: \(array)")
        print("After Sorting: \(quickSort(array: array))")
        
        //bubbleSort()
    }
}

func quickSort(array: [Int]) -> [Int]
{
    ///Quick Sort
    if array.count > 1
    {
        var lessVal = [Int]()
        var equalVal = [Int]()
        var greaterVal = [Int]()
        let pivot = array.first

        for i in array
        {
            if i < pivot! { lessVal.append(i) }
            if i == pivot { equalVal.append(i) }
            if i > pivot! { greaterVal.append(i) }
        }

        return quickSort(array: lessVal)+equalVal+quickSort(array: greaterVal)
    }
    return array
}

func bubbleSort()
{
    ///Bubble Sort
    var array = [3,-1,6,9,4,2,5,4]
    print ("Before Sorting: \(array)")
     
    for i in 0..<array.count - 1
    {
        var count = 0
        for j in 0..<array.count - 1 - i
        {
            if array[j] > array[j+1]
            {
                array.swapAt(j, j+1)
                count += 1
            }
        }
        if count == 0 {break}
    }

    print ("After Sorting: \(array)")
}

