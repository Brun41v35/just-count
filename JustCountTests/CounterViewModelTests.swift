import Testing
@testable import JustCount

struct CounterViewModelTests {

    private var sut: CounterViewModel

    init() {
        sut = CounterViewModel()
    }

    @Test
    func test_incrementOne_shouldIncrementOneMore() {
        sut.incrementOne()

        #expect(sut.number == 1, "Expect to increment one more")
    }

    @Test
    func test_incrementFive_shouldIncrementFiveMore() {
        sut.incrementFive()

        #expect(sut.number == 5, "Expect to increment five more")
    }

    @Test
    func test_decrementFive_shouldDecrementFiveMore() {
        sut.decrementFive()

        #expect(sut.number == -5, "Expect to decrement five more")
    }

    @Test
    func test_reset_shouldResetTheNumber() {
        sut.reset()

        #expect(sut.number == 0, "Expect to reset the count")
    }

    @Test
    func test_handleNumberStatus_shouldBePositive() {
        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Positive", "Expect that `receivedValue` be Positive")
    }

    @Test
    func test_handleNumberStatus_shouldBeNegative() {
        sut.number = -10

        let receivedValue = sut.handleNumberStatus()

        #expect(receivedValue == "Negative", "Expect that `receivedValue` be Negative")
    }
}
