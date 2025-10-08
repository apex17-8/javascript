// Polymorphism allows methods to do different things based on the object it is acting upon.
// Here, we have a base class NotificationSystem and two derived classes CarAppNotification and SMSNotification.

class NotificationSystem {
  send(message: string): void {
    console.log(`Sending generic notification: ${message}`);
  }
}

class CarAppNotification extends NotificationSystem {
  send(message: string): void {
    console.log(`📱 Car App: ${message}`);
  }
}

class SMSNotification extends NotificationSystem {
  send(message: string): void {
    console.log(`📩 SMS: ${message}`);
  }
}

function notifyUser(system: NotificationSystem, message: string) {
  system.send(message);
}

notifyUser(new CarAppNotification(), "Your car needs servicing 🚗🔧");
notifyUser(new SMSNotification(), "Your insurance is expiring soon 🧾");
