//
//  ContentView.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/15/22.
//

import SwiftUI

struct ContentView: View {

    let backgroundGradient = LinearGradient(
            colors: [Color.orange, Color.blue],
            startPoint: .top, endPoint: .bottom)


    var body: some View {

        NavigationView {
            //add color if you want

            ZStack {
                backgroundGradient
                        .ignoresSafeArea()

                VStack {
                    Spacer()
                    NavigationLink(destination: CRAAPTEST()) {
                        Text("CRAAP Test")
                                .frame(width: 150, height: 25)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 5)
                                )

                    }
                    Spacer()

                    NavigationLink(destination: FakeMomCall()) {
                        Text("Fake Call")
                                .frame(width: 150, height: 25)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                                .padding(.all, 10.0)
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 5)
                                )

                    }
                    Spacer()
                    NavigationLink(destination: MathEz()) {
                        Text("MathEz")
                                .frame(width: 150, height: 25)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.white)
                                .cornerRadius(40)
                                .padding(10)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 5)
                                )

                    }
                    Spacer()

                    NavigationLink(destination: Demo()) {
                        Text("Demo")
                                .frame(width: 150, height: 25)
                                .multilineTextAlignment(.center)
                                .padding(.all, 10.0)
                                .background(Color.white)
                                .cornerRadius(40)
                                .foregroundColor(.black)
                                .padding(10)
                                .shadow(radius: 80)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                                .stroke(Color.white, lineWidth: 5)
                                )
                    }
                    Spacer()

                }
            }

                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)

        }

    }
}


///Don't Fucking Touch This Dumbass
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}

