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
        
        //the ZStack stacks views on top of themselves
        //over here the ZStack is used to stack a color for the screens
        //background
        //implementing the idea of a "Background Color"
        ZStack {
            
            
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
                // this ignores safe area view for
                //both top and bottom edges
            
            VStack {
                Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                    .bold()
                    .foregroundColor(Color("TextColor"))
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                Text(String(game.target))
                    .foregroundColor(Color("TextColor"))
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .kerning(-1.0)
                HStack{
                    Text("1")
                        .font(.callout)
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .font(.callout)
                        .bold()
                        .foregroundColor(Color("TextColor"))
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
                    .background(
                        ZStack {
                            Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)

                    })
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
