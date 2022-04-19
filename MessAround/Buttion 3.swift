//
//  Buttion 3.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/17/22.
//

import SwiftUI

struct buttion3: View {

    func placeOrder() {
    }

    func adjustOrder() {
    }

    func rename() {
    }

    func delay() {
    }

    func cancelOrder() {
    }

    @State var isChecked: Bool = false

    func toggle() {
        isChecked = !isChecked
    }

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            VStack {
                Text("This Page is a Demo of cool buttions")
                        .padding(.all, 50)
                        .multilineTextAlignment(.center)
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                                .font(.title)
                        Text("Delete")
                                .fontWeight(.semibold)
                                .font(.title)
                    }
                            .padding()
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                }
                Button {
                    print("Image tapped!")
                } label: {
                    Image("Swift")
                }
                Button(action: toggle) {
                    HStack {
                        Image(systemName: isChecked ? "checkmark.square" : "square")
                        Text("Cool Check Box Go BRRRRR")
                    }

                }
                Menu("DropDown Menu?") {
                    Button("See it weird", action: placeOrder)
                    Button("but ", action: adjustOrder)
                    Menu("do you think") {
                        Button("this", action: rename)
                        Button("is a drop down menu?", action: delay)
                    }
                    Button("Cancel", action: cancelOrder)
                }

            }
        }
    }
}


//Don't touch this dumbass
struct Buttion_3_Previews: PreviewProvider {
    static var previews: some View {
        buttion3()
    }
}
