//
//  MathEz.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/26/22.
//

import SwiftUI

struct MathEz: View {
    var body: some View {

        let backgroundGradient = LinearGradient(
                colors: [Color.orange, Color.green],
                startPoint: .top, endPoint: .bottom)
        ZStack {


            backgroundGradient
                    .ignoresSafeArea()

            VStack {
                Spacer()
                NavigationLink(destination: Math_nPr_nCr()) {
                    Text("nCr")
                            .frame(width: 150, height: 25)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.all, 10.0)
                            .background(Color.blue)
                            .cornerRadius(40)
                            .padding(10)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.blue, lineWidth: 5)
                            )

                }
                Spacer()
                NavigationLink(destination: Factorial()) {
                    Text("Factorial")
                            .frame(width: 150, height: 25)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.all, 10.0)
                            .background(Color.blue)
                            .cornerRadius(40)
                            .padding(10)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.blue, lineWidth: 5)
                            )

                }
                Spacer()
            }


        }
                .navigationTitle("MathEz")
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct MathEz_Previews: PreviewProvider {
    static var previews: some View {
        MathEz()
    }
}
