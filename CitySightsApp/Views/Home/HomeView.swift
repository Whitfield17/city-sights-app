//
//  HomeView.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-07-30.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var isMapShowing = false
    
    var body: some View {
        
        if model.restaurants.count != 0 || model.sights.count != 0 {
            
            //Determine if we should show list or map
            if !isMapShowing {
                //Show list
                
                VStack(alignment: .leading) {
                    HStack {
                        
                        Image(systemName: "location")
                        
                        Text("San Francisco")
                        
                        Spacer()
                        
                        Text("Switch to map view")
                    }
                    
                    Divider()
                    
                    BusinessList()
                }
                .padding([.horizontal, .top])
            } else {
                //Show map
            }
            
        } else {
            
            //Still waiting for data so show spinner
            ProgressView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}