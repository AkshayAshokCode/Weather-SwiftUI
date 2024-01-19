//
//  TabBar.swift
//  Weather-SwiftUI
//
//  Created by Akshay Ashok on 18/01/24.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        ZStack{
            
            // MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay{
                    // MARK: Arc Border
                    Arc().stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            
            // MARK: Tab Items
            HStack{
                // MARK: Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                Spacer()
                // MARK: NAvigation Button
                NavigationLink{
                    
                }label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
                
            }
            .font(.title)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 34, trailing: 32))
                
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    TabBar(action: {}).preferredColorScheme(.dark)
}
