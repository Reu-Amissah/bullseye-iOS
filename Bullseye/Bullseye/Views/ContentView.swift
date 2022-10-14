//
//  ContentView.swift
//  Bullseye
//
//  Created by R. Amissah on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
     
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        
        
        ZStack {
            
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
                // this ignores safe area view for
                //both top and bottom edges
            
            VStack {
                
                InstructionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)

            }
        }
    }
}

//reusable INSTRUCTIONS VIEW component
struct InstructionsView: View{
    
    @Binding var game: Game
    
    var body: some View{
        InstructionsText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
            .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
        BigNumberText(text: String(game.target))
    }
        .padding()
}

struct SliderView: View {

    @Binding var sliderValue: Double

    var body: some View {
        HStack{
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View{
    
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            print("Hello SwiftUI")
            alertIsVisible = true
        }) {
            HitMeText(text: "Hit Me")

        }
            .padding(20.0)
            .background(
                ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)

            })
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(
                        Color.white,
                        lineWidth: 2.0
                    )
            )
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {

                //round slider Value to nearest whole number
                let roundedValue = Int(sliderValue
                    .rounded())

                Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round")
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
