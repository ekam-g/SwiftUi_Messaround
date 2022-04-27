//
//  Buttion2.swift
//  MessAround
//
//  Created by Ekam Ghai on 4/16/22.
//

import SwiftUI

struct buttion2: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.orange, .black]), center: .center, startRadius: 2, endRadius: 300)
                    .ignoresSafeArea()
            Image("Swift")
            VStack {
                Text("This App took 1,429 lines of code!")
                        .foregroundColor(Color.black)
                        .padding(.all, 45)


                Button {
                    print("Your MOMMA FAT")
                } label: {
                    Label("Cool ICON go BRR", systemImage: "pencil")
                            .padding(.all, 45)
                            .foregroundColor(Color.black)
                }
            }
        }

    }
}


