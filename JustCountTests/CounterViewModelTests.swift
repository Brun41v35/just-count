import Testing
@testable import JustCount

struct CounterViewModelTests {

    @Test
    func test_incrementOne_shouldIncrementOneMore() {
        let sut = CounterViewModel()

        sut.incrementOne()

        #expect(sut.number == 1, "Expect to increment one more")
    }

    @Test
    func test_incrementFive_shouldIncrementFiveMore() {
        let sut = CounterViewModel()

        sut.incrementFive()

        #expect(sut.number == 5, "Expect to increment five more")
    }

    @Test
    func test_decrementFive_shouldDecrementFiveMore() {
        let sut = CounterViewModel()

        sut.decrementFive()

        #expect(sut.number == -5, "Expect to decrement five more")
    }

    @Test
    func test_reset_shouldResetTheNumber() {
        let sut = CounterViewModel()

        sut.reset()

        #expect(sut.number == 0, "Expect to reset the count")
    }

    @Test
    func test_handleNumberStatus_shouldBePositive() {
        let sut = CounterViewModel()

        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Positive", "Expect that `receivedValue` be Positive")
    }

    @Test
    func test_handleNumberStatus_shouldBeNegative() {
        let sut = CounterViewModel()
        sut.number = -10

        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Negative", "Expect that `receivedValue` be Negative")
    }
}
