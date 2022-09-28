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
            HStack{
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
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
