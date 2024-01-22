//
//  WeatherView.swift
//  Weather-SwiftUI
//
//  Created by Akshay Ashok on 22/01/24.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""
    
    var searchResults: [Forecast]{
        if(searchText.isEmpty){
            return Forecast.cities
        }else{
            return Forecast.cities.filter{$0.location.contains(searchText)}
        }
    }
    
    var body: some View {
        ZStack{
            //MARK: Background
            Color.background1
                .ignoresSafeArea()
            
            //MARK: Weather Widgets
            ScrollView(showsIndicators: false){
                VStack(spacing: 20){
                    ForEach(searchResults){ forecast in
                    WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top){
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay{
            //MARK: Navigation Bar
            NavigationBar(searchText: $searchText)
        }
        .navigationBarHidden(true)
//        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for a city or airport")
    }
}

#Preview {
    NavigationView {
        WeatherView().preferredColorScheme(.dark)
    }
}
