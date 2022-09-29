//
//  Game.swift
//  Bullseye
//
//  Created by R. Amissah on 29/09/2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100) //random input generator
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference: Int
        difference = abs(self.target - sliderValue)
        
        let awardedPoints: Int = 100 - difference
        return awardedPoints
    }
    
    // subtract slider from target, if target value is bigger...else vice versa
}
