import Foundation
import Combine

["A", "B", "C", "D"].publisher.sink {
    print($0)
}

print("Collect Operator")
["A", "B", "C", "D"].publisher.collect().sink {
    print($0)
}

print("Collect Operator with Parameter (Grouping)")

["A", "B", "C", "D"].publisher.collect(3).sink {
    print($0)
}

