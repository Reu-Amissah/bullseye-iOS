//
//  RoundViews.swift
//  Bullseye
//
//  Created by R. Amissah on 05/10/2022.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
                    
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 68.0, height: 68.0)
            .background(
                RoundedRectangle(cornerRadius: 21.0)
                    .fill(Color("BackgroundColor"))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack (spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRectTextView(text: "999")
        }
    }
}


struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
    }
}
