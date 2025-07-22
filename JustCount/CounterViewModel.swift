import SwiftUI

@Observable
final class CounterViewModel {

    var number: Int = 0

    func incrementOne() {
        number += 1
    }

    func incrementFive() {
        number += 5
    }

    func decrementFive() {
        number -= 5
    }

    func reset() {
        number = 0
    }

    func handleNumberStatus() -> String {
        if number >= 0 {
            return "Positive"
        } else {
            return "Negative"
        }
    }
}
