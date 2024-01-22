//
//  WeatherView.swift
//  Weather-SwiftUI
//
//  Created by Akshay Ashok on 22/01/24.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack{
            //MARK: Background
            Color.background1
                .ignoresSafeArea()
        }
        .overlay{
            //MARK: Navigation Bar
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    WeatherView().preferredColorScheme(.dark)
}
