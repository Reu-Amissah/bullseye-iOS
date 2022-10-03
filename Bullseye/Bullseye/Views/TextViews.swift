//
//  TextViews.swift
//  Bullseye
//
//  Created by R. Amissah on 03/10/2022.
//

import SwiftUI

struct InstructionsText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.largeTitle)
            .fontWeight(.black)
            .kerning(-1.0)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsText(text: "Instructions")
        BigNumberText(text: "50")
    }
}
