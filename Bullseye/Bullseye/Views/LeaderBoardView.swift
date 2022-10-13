//
//  LeaderBoardView.swift
//  Bullseye
//
//  Created by R. Amissah on 12/10/2022.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        
        VStack (spacing: 10) {
            HeaderView(boldText: "LeaderBoard")
            RowView(index: 1, score: 10, date: Date())
        }
    }
}

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack{
            RoundedTextView(text: String(index))
            Spacer()
            ScoreText(score: score)
            Spacer()
            DateText(date: date)
        }
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
        )
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}

struct HeaderView: View {
    let boldText: String
    
    var body: some View {
        ZStack{
            BigBoldText(text: boldText)
            HStack {
                Spacer()
                Button(action: {}) {
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                }
            }
        }
    }
}



struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
