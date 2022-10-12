//
//  LeaderBoardView.swift
//  Bullseye
//
//  Created by R. Amissah on 12/10/2022.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        HStack{
            RoundedTextView(text: "1")
            Spacer()
            ScoreText(text: "10")
            Spacer()
            DateText(text: "12:31 PM")
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                .strokeBorder(Color("ButtonStrokeColore"), lineWidth: Constants.General.strokeWidth)
        )
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
