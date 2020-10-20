//
//  AppView.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/17.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AboutEditor()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("作者介紹")
                }
                .background(
                    Image("背景")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .opacity(0.3)
                    
                    
                )
            ConanList()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("角色介紹")
                    
                }
            ConanTheaterVersion()
                .tabItem {
                    Image(systemName: "book.circle")
                    Text("柯南劇場版")
                }
        }
        .accentColor(.orange)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
