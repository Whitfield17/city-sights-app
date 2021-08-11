//
//  BusinessSectionHeader.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-07-30.
//

import SwiftUI

struct BusinessSectionHeader: View {
    
    var title: String
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 45)
            
            Text(title)
                .font(.headline)
        }
    }
}

