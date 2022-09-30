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
        VStack {
            Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            Text(String(game.target))
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack{
                Text("1")
                    .font(.callout)
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.callout)
                    .bold()
            }
            .padding()
            
            //hit me Button
            Button(action: {
                print("Hello Swift")
                alertIsVisible = true
            }) {
                Text("Hit Me".uppercased())
                    .bold()
                    .font(.title3)
            }
                .padding(20.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
