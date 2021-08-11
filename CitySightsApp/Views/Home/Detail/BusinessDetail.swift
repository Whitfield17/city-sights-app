//
//  BusinessDetail.swift
//  CitySightsApp
//
//  Created by Braydon Whitfield on 2021-08-02.
//

import SwiftUI

struct BusinessDetail: View {
    
    var business: Business
    @State private var showDirections = false
    
    var body: some View {

        VStack(alignment: .leading) {
            
            VStack(alignment: .leading, spacing: 0) {
                
                GeometryReader() { geometry in
                    
                    //Business Image
                    let uiImage = UIImage(data: business.imageData ?? Data())
                    Image(uiImage: uiImage ?? UIImage())
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                }
                .ignoresSafeArea(.all, edges: .top)
                
                //Open/Closed indicator
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 36)
                        .foregroundColor(business.isClosed! ? .gray : .blue)
                    
                    Text(business.isClosed! ? "Closed" : "Open")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading)
                }
            }
            
            Group {
                
                HStack {
                    BusinessTitle(business: business)
                        .padding()
                    
                    Spacer()
                    
                    YelpAttribution(link: business.url!)
                }

                DashedDivider()
                    .padding(.horizontal)
                
                //Phone
                HStack {
                    Text("Phone:")
                        .bold()
                    Text(business.displayPhone ?? "")
                    Spacer()
                    Link("Call", destination: URL(string: "tel:\(business.phone ?? "")")!)
                }
                .padding()
                
                DashedDivider()
                    .padding(.horizontal)
                
                //Reviews
                HStack {
                    Text("Reviews:")
                        .bold()
                    Text(String(business.reviewCount ?? 0))
                    Spacer()
                    Link("Read", destination: URL(string: "\(business.url ?? "")")!)
                }
                .padding()
                
                DashedDivider()
                    .padding(.horizontal)
                
                //Website
                HStack {
                    Text("Website:")
                        .bold()
                    Text(business.url ?? "")
                        .lineLimit(1)
                    Spacer()
                    Link("Visit", destination: URL(string: "\(business.phone ?? "")")!)
                }
                .padding()
                
                DashedDivider()
                    .padding(.horizontal)
            }
            
            //Get directions button
            Button {
                //Show Directions
                showDirections = true
            } label: {
                ZStack {
                    
                    Rectangle()
                        .frame(height: 48)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    
                    Text("Get Directions")
                        .foregroundColor(.white)
                        .bold()
                }
            }
            .padding()
            .sheet(isPresented: $showDirections) {
                DirectionsView(business: business)
            }
        }

    }
}
