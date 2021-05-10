import Foundation
import Combine

let publisher = ["A","B","C","D","E","F","G","H"].publisher

let stringSubscriber = StringSubscriber()

publisher.subscribe(stringSubscriber)
