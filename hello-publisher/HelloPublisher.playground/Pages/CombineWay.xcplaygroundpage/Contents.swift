import Foundation
import Combine

let notification = Notification.Name("MyNotification")

let publisher = NotificationCenter.default.publisher(for: notification, object: nil)

let subscription = publisher.sink { _ in
    print("Notification recieved!")
}

NotificationCenter.default.post(name: notification, object: nil)

subscription.cancel()

NotificationCenter.default.post(name: notification, object: nil)
