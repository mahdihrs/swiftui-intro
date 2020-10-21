//
//  ContentView.swift
//  BusinessCard
//
//  Created by adikminumsusu on 21/10/20.
//  Copyright © 2020 self-org. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.5, blue: 0.502, opacity: 0.6)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("mahdiinbali")
                    .resizable()
                    .frame(width: 175.0, height: 175)
//                    .cornerRadius(100)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                        .stroke(
                            Color.white, lineWidth: 5
                    )
                )
                Text("Mahdi Haris")
                    .font(Font.custom("ShareTechMono-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("Front End Developer")
                    .font(Font.custom("ShareTechMono-Regular", size: 15))
                    .foregroundColor(.white)
                    .padding(.top, 12)
                Divider()
                InfoView(text: "+62 811 1436 6455", imageName: "phone.fill")
                InfoView(text: "mahdihrs@yahoo.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewLayout(.fixed(width: 2436 / 3.0, height: 1125 / 3.0))
    }
}
