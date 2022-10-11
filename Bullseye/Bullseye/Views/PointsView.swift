//
//  PointsView.swift
//  Bullseye
//
//  Created by R. Amissah on 11/10/2022.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        VStack{
            let roundedValue = Int(sliderValue.rounded())
            let points = game.points(sliderValue: roundedValue)
            
            InstructionsText(text: "The slider value is".uppercased())
                .padding(.bottom, 10)
            BigNumberText(text: String(roundedValue))
                .padding(.bottom, 10)
            BodyText(text: "You scored \(points) Points")
                .padding(.bottom, 10)
            Button(action: {
                game.startNewRound(points: points)
                withAnimation {
                    alertIsVisible = false
                } //--ANIMATION ON CHANGE STATE---
            }) {
                ButtonText(text: "Start New round")
            }
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow(radius: 10, x: 5, y: 5)
            .transition(.scale)
    }
}


struct PointsView_Previews: PreviewProvider {

    static private var alertIsVisible = Binding.constant(false)
    static private var sliderValue =  Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
    }
}
