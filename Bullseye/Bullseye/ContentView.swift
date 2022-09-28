//
//  ContentView.swift
//  Bullseye
//
//  Created by R. Amissah on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
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
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .font(.callout)
                    .bold()
            }
            Button(action: {}) {
                Text("Hit Me")
            }.padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
