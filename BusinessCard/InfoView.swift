//
//  InfoView.swift
//  BusinessCard
//
//  Created by adikminumsusu on 21/10/20.
//  Copyright © 2020 self-org. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 35, style: .circular)
            .stroke(Color.white, lineWidth: 1)
            .frame(maxHeight: 50)
            .background(RoundedRectangle(cornerRadius: 35)
                .fill(Color.white)
                .overlay(HStack {
                    Image(systemName: imageName).foregroundColor(Color(red: 0, green: 0.5, blue: 0.502, opacity: 0.6))
                    Text(text)
                    
                    }
                )
        )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "ehe", imageName: "heart.fill")
            .previewLayout(.sizeThatFits)
    }
}
