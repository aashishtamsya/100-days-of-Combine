import Foundation
import Combine

let empty = Empty<Int, Never>()

empty.sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })

empty.replaceEmpty(with: 1).sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })

