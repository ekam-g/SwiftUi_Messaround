//
//  Factorial.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/26/22.
//

import SwiftUI

struct Factorial: View {
    @State var a: float_t = 0


    func factorial(number: float_t) -> float_t {
        if number == 0 {
            return 1
        }

        return number * factorial(number: number - 1)
    }

    func afactorial() {
        if a == 0 {
            a = 1
        }
        a *= factorial(number: a - 1)
    }

    var body: some View {
        VStack {
            Text("Factorial")
                    .font(.title)
            TextField("Put number here", value: $a, formatter: NumberFormatter())
                    .padding(.horizontal, 40)
            Button(
                    action: {
                        afactorial()
                    }) {

                Text("Calculate")
                        .frame(width: 130, height: 10)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 5.0)
                        .background(Color.blue)
                        .cornerRadius(40)
                        .font(.body)
            }
        }
    }
}

struct Factorial_Previews: PreviewProvider {
    static var previews: some View {
        Factorial()
    }
}
