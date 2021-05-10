import Foundation
import Combine

let publisher = PassthroughSubject<Int, Never>().eraseToAnyPublisher() // put concrete type behind any other type, so that caller doesn't know what is implemented, kind of abstraction
