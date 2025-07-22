import Testing
@testable import JustCount

struct CounterViewModelTests {

    @Test
    func test_incrementOne_shouldIncrementOneMore() {
        let sut = CounterViewModel()

        sut.incrementOne()

        #expect(sut.number == 1)
    }

    @Test
    func test_incrementFive_shouldIncrementFiveMore() {
        let sut = CounterViewModel()

        sut.incrementFive()

        #expect(sut.number == 5)
    }

    @Test
    func test_decrementFive_shouldDecrementFiveMore() {
        let sut = CounterViewModel()

        sut.decrementFive()

        #expect(sut.number == -5)
    }

    @Test
    func test_reset_shouldResetTheNumber() {
        let sut = CounterViewModel()

        sut.reset()

        #expect(sut.number == 0)
    }

    @Test
    func test_handleNumberStatus_shouldBePositive() {
        let sut = CounterViewModel()

        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Positive")
    }

    @Test
    func test_handleNumberStatus_shouldBeNegative() {
        let sut = CounterViewModel()
        sut.number = -10

        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Negative")
    }
}
