import Foundation

let notification = Notification.Name("MyNotification")
let center = NotificationCenter.default

let observer = center.addObserver(forName: notification, object: nil, queue: nil) { notification in
    print("Notification recieved!")
}

center.post(name: notification, object: nil)

center.removeObserver(observer)
