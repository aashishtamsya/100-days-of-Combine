import Foundation
import Combine

// getting optional values recieved from replaceNil
["A", "B", nil, "C"].publisher
    .replaceNil(with: "*")
    .sink {
    print($0)
}

// Unwrapping the optional values recieved from replaceNil
["A", "B", nil, "C"].publisher
    .replaceNil(with: "*")
    .compactMap { $0 }
    .sink {
    print($0)
}
