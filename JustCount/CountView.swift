import SwiftUI

struct CountView: View {

    @State private var number = 0
    @State private var viewModel = CounterViewModel()

    var body: some View {
        VStack(spacing: 10) {
            Text("\(viewModel.number)")
                .font(.title)
                .fontWeight(.bold)

            Button("+1") {
                viewModel.incrementOne()
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)

            Button("+5") {
                viewModel.incrementFive()
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)
            
            Button("-5") {
                viewModel.decrementFive()
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)

            Button("Reset") {
                viewModel.reset()
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)

            Text(viewModel.handleNumberStatus())
                .font(.callout)
                .fontWeight(.bold)
        }
    }
}



// MARK: - Preview

#Preview { CountView() }
