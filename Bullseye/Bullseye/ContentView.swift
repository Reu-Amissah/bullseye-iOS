//
//  ContentView.swift
//  Bullseye
//
//  Created by R. Amissah on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
     
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("89")
                .font(.largeTitle)
                .fontWeight(.black)
                .kerning(-1.0)
            HStack{
                Text("1")
                    .font(.callout)
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.callout)
                    .bold()
            }
            Button(action: {
                print("Hello  SwiftUI")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }.padding()
                .alert("Hello there!", isPresented: $alertIsVisible) {
                  Button("Awesome!") { }
                } message: {
                  Text("This is my first pop-up")
                }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
