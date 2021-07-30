//
//  BusinessSearch.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-07-30.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
}

struct Region: Decodable {
    var center = Coordinate()
}
