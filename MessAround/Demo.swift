//
//  Demo.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/20/22.
//

import SwiftUI

struct Demo: View {

    var body: some View {

        NavigationView {


            ZStack {

                AngularGradient(gradient: Gradient(colors: [.orange, .yellow, .red, .orange, .yellow, .red, .orange]), center: .center).ignoresSafeArea()
                        .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: buttion1()) {
                        Text("Buttion 1")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.yellow)
                                .cornerRadius(40)
                                .padding(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.yellow, lineWidth: 5)
                                )

                    }
                    Text("")
                            ///this is for spacing
                            .padding(.all, 50)

                    NavigationLink(destination: buttion2()) {
                        Text("Buttion 2")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.orange)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .shadow(radius: 80)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.orange, lineWidth: 5)
                                )
                    }
                    Text("")
                            .padding(.all, 40)

                    NavigationLink(destination: buttion3()) {
                        Text("Buttion 3")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.red)
                                .cornerRadius(40)
                                .padding(10)
                                .foregroundColor(Color.black)
                                .shadow(radius: 80)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.red, lineWidth: 5)
                                )
                    }

                }
            }
                    .navigationTitle("Ekam's Demo")
                    .navigationBarTitleDisplayMode(.inline)
                    .foregroundColor(Color.white)
        }

    }
}
