//
//  PointsView.swift
//  Bullseye
//
//  Created by R. Amissah on 11/10/2022.
//

import SwiftUI

struct PointsView: View {
    @State private var game = Game()
    
    var body: some View {
        VStack{
            InstructionsText(text: "The slider value is".uppercased())
                .padding(.bottom, 10)
            BigNumberText(text: String(game.target))
                .padding(.bottom, 10)
            BodyText(text: "You scored \(game.score) Points")
                .padding(.bottom, 10)
            Button(action: {
                
            }) {
                ButtonText(text: "Start New round")
            }
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow(radius: 10, x: 5, y: 5)
    }
}


struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
    }
}
