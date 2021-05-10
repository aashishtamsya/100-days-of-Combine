import Foundation
import Combine

// Subjects
 // - Publisher
 // - Subscriber


let subscriber = StringSubscriber()
let subject = PassthroughSubject<String, StringSubscriberError>()

subject.subscribe(subscriber)

let subscription = subject.sink { completion in
    switch completion {
    case .finished:
        print("Finished.")
    case .failure(let error):
        print("Failure: ", error.localizedDescription)
    }
} receiveValue: { value in
    print("Value: ",value)
}


subject.send("A")
subject.send("B")
subscription.cancel()

subject.send("C")
subject.send("D")
//subject.send(completion: .finished)
