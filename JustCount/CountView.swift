import SwiftUI

struct CountView: View {
    var body: some View {
        VStack {
            Button("+1") {
                print("Count One..")
            }
            .foregroundStyle(.black)
            .buttonStyle(.bordered)
        }
    }
}

// MARK: - Preview

#Preview {
    CountView()
}
