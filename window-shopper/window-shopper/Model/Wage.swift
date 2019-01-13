//
//  Wage.swift
//  window-shopper
//
//  Created by Bailey Aldridge on 13/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
