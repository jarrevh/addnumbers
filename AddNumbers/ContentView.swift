import SwiftUI

struct ContentView: View {
    @State private var firstNumber = "0"
    @State private var secondNumber = "0.0"
    @State private var result = 0.0

    var body: some View {
        VStack {
            Text("Add Numbers").font(.title)
            HStack {
                TextField("Enter the first number", text: $firstNumber).keyboardType(.numberPad)
                TextField("Enter the second number", text: $secondNumber).keyboardType(.decimalPad)
            }

            HStack {
                Button(action: {
                    if Double(firstNumber) != nil && Double(secondNumber) != nil {
                        self.result = Double(self.firstNumber)! + Double(self.secondNumber)!
                    }
                })
                {
              Text("Add")
                }
            }

            HStack {
                Text("\(self.result)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
