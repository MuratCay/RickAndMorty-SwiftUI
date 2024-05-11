//
//  MainTabbedView.swift
//  RickAndMorty-SwiftUI
//
//  Created by Murat on 11.05.2024.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                HomeScreen()
                    .tag(0)

                FavouritesScreen()
                    .tag(1)

                ProfileScreen()
                    .tag(2)
            }

            ZStack{
                HStack{
                    ForEach((TabbedItems.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(systemName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }
                .padding(6)
            }
            .frame(height: 70)
            .background(.purple.opacity(0.2))
            .cornerRadius(35)
            .padding(.horizontal, 26)
        }
    }
}

extension MainTabbedView{
    func CustomTabItem(systemName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(systemName: systemName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : 90, height: 60)
        .background(isActive ? .purple.opacity(0.4) : .clear)
        .cornerRadius(30)
    }
}

#Preview {
    ContentView()
}
