//
//  Game.swift
//  Bullseye
//
//  Created by R. Amissah on 29/09/2022.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100) //random input generator
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs(target - sliderValue)
        //or //  100 - abs(target - sliderValue)
    }
    
    // subtract slider from target, if target value is bigger...else vice versa
}
