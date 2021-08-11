//
//  YelpAttribution.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-08-11.
//

import SwiftUI

struct YelpAttribution: View {
    
    var link: String
    
    var body: some View {

        Link(destination: URL(string: link)!) {
            Image("yelp")
                .resizable()
                .scaledToFit()
                .frame(height: 36)
        }

    }
}
