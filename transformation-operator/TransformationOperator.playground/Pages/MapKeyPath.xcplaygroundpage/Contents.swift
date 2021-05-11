import Foundation
import Combine

struct Point {
    let x: Int
    let y: Int
}

let publisher = PassthroughSubject<Point, Never>()

publisher.map(\.x, \.y).sink {
    print("x: ", $0, "y: ", $1)
}

publisher.send(Point(x: 4, y:6))
