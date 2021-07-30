//
//  BusinessSection.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-07-30.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        Section(header: BusinessSectionHeader(title: title)) {
            ForEach(businesses) { business in
                
                BusinessRow(business: business)
                
            }
        }
    }
}
