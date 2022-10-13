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

struct SliderLabelText: View{
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct HitMeText: View{
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.title3)
    }
}

struct LabelTextView: View{
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .font(.caption)
    }
}

struct BodyText: View{
    var text: String
    
    var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .font(.subheadline)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.semibold)
            .lineSpacing(14)
            
    }
}

struct ButtonText: View{
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .cornerRadius(12)
            .foregroundColor(Color.white)
            .font(.body)
        
        
    }
}

struct ScoreText: View{
    var score: Int
    
    var body: some View {
        Text(String(self.score))
            .bold()
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("TextColor"))
            .kerning(-2.0)
            .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
    }
}

struct DateText: View{
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("TextColor"))
            .kerning(-2.0)
            .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
}

struct BigBoldText: View{
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .fontWeight(.black)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .kerning(2.0)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            InstructionsText(text: "Instructions")
            BigNumberText(text: "50")
            SliderLabelText(text: "4")
            HitMeText(text: "HitMe")
            LabelTextView(text: "Score")
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 10)
            DateText(date: Date())
            BigBoldText(text: "LeaderBoard")
        }
        .padding()
    }
    
}

