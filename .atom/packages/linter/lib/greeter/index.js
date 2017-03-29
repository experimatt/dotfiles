/* @flow */

// Greets
import greetV2Welcome from './greet-v2-welcome'


// Note: This package should not be used from "Main" class,
// Instead it should be used from the main package entry point directly
export default class Greeter {
  notifications: Set<Object>;
  constructor() {
    this.notifications = new Set()
  }
  showWelcome(): void {
    greetV2Welcome()
  }
  dispose() {
    this.notifications.forEach(n => n.dismiss())
    this.notifications.clear()
  }
}
