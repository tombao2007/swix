//
//  constants.swift
//  swix
//
//  Created by Scott Sievert on 6/11/14.
//  Copyright (c) 2014 com.scott. All rights reserved.
//

import Foundation
import Accelerate

typealias matrix   = Array<Double>
typealias matrix2d = Array<Array<Double>>

// add extension here -- indexing, x[0..4] = 1 etc
extension Array{
    // issues with Array<Double> and extending non-protocol type. Smells like a Swift0.1 bug: http://stackoverflow.com/questions/24047164/extension-of-constructed-generic-type-in-swift
    // possible struct instead? http://stackoverflow.com/questions/24046792/swift-generics-requiring-addition-and-multiplication-abilities-of-a-type
    func flat() -> matrix{
        // ran into issues here. tried `let N = self[0].shape` which works for 2D arrays but compiler fail
        return ones(4)
    }
//    subscript(indexes: Range<Int>) -> Double {
//        get {
//            return -1.0;
//        }
//        set {
//            for i in indexes{
//                self[i] = Int(2.0)
//            }
//            return self
//        }
//    }
}

// mathematical constants
let pi = 3.14159265358979323846264338327950288419716939937510582
let e  = 2.71828182845904523536028747135266249775724709369995
let phi = 1.6180339887498948482

