import Foundation
import Combine

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

[123, 34, 56].publisher.map {
    formatter.string(for: $0)
}.sink {
    print($0)
}

// MARK: - Compact Map

[123, 34, 56].publisher.compactMap {
    formatter.string(for: $0)
}.sink {
    print($0)
}
