//
//  Math_nPr:nCr.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/26/22.
//

import SwiftUI


struct Math_nPr_nCr: View {
    @State var a: float_t = 0
    @State var r: float_t = 0
    @State var s: float_t = 0
    @State var f: float_t = 0
    @State var solution: float_t = 0


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

    func rfactorial() {
        if r == 0 {
            r = 1
        }
        r *= factorial(number: r - 1)
    }

    func sfactorial() {
        if s == 0 {
            s = 1
        }
        s *= factorial(number: s - 1)
    }


    func nCr() {
        s = a - r
        sfactorial()
        afactorial()
        rfactorial()
        f = s * r
        solution = a / f
        a = 0
        r = 0
        s = 0
        f = 0
    }


    var body: some View {
        VStack {
            Text("nCr")
                    .font(.largeTitle)
            Text("N value")
            TextField("N", value: $a, formatter: NumberFormatter())
                    .padding(.horizontal, 40)
            Text("R value")
            TextField("C", value: $r, formatter: NumberFormatter())
                    .padding(.horizontal, 40)
            Button(
                    action: {
                        nCr()
                    }) {

                Text("Calculate nCr")
                        .frame(width: 130, height: 10)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 5.0)
                        .background(Color.blue)
                        .cornerRadius(40)
                        .font(.body)
            }
            Text("Answer\(solution)")

        }
    }
}

struct Math_nPr_nCr_Previews: PreviewProvider {
    static var previews: some View {
        Math_nPr_nCr()
    }
}
//