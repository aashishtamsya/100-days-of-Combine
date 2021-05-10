import Foundation
import Combine

public enum StringSubscriberError: Error {
    case subscriberError
}

public class StringSubscriber: Subscriber {
    public typealias Input = String
    public typealias Failure = StringSubscriberError

    public init() { }

    public func receive(subscription: Subscription) {
        print("received subscription")
        subscription.request(.max(2)) // backpressure
    }

    public func receive(_ input: String) -> Subscribers.Demand {
        print("Received Value: ", input)
        return .max(1)
    }

    public func receive(completion: Subscribers.Completion<StringSubscriberError>) {
        print("Completed")
    }
}
