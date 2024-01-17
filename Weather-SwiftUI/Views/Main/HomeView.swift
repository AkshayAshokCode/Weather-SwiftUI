//
//  HomeView.swift
//  Weather-SwiftUI
//
//  Created by Akshay Ashok on 17/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            // MARK: Background Color
            Color.background1.ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background").resizable().ignoresSafeArea()
            
            //MARK: House Image
            Image("House").frame(maxWidth: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack{
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack{
                    Text("19°" + "\n" + "Mostly Clear")
                    
                    Text("H:24°    L:18°")
                        .font(.title3.weight(.semibold))
                }
                Spacer()
            }.padding(.top, 51)
        }
    }
}

#Preview {
    HomeView().preferredColorScheme(.dark)
}
