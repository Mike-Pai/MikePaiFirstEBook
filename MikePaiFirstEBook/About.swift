//
//  About.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/18.
//

import SwiftUI

struct AboutEditor: View {
    @State private var degree: Double = 0
    @State private var opacity: Double = 0
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("歡迎光臨真理殿堂")
                    .font(.title)
                    .fontWeight(.black)
                    .padding([.top,.leading])
                    .opacity(opacity)
                    .animation(.easeInOut(duration:2))
                    .onAppear(){
                        opacity=1
                    }
                
                Image("角色2")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .opacity(opacity)
                    .animation(.easeInOut(duration:2))
                    .onAppear(){
                        opacity=1
                    }
                    
                    .rotationEffect(.degrees(degree))
                    .animation(.linear(duration:2))
                    .onAppear(){
                        degree = 360
                    }
                
                
            }
            .offset(x: 10)
            
            Text("作者：青山昌剛")
                .font(.title2)
                .padding(.horizontal)
                .opacity(opacity)
                .animation(.easeInOut(duration:2))
                .onAppear(){
                    opacity=1
                }
            Text("經歷：1963年生於大榮町由良宿。在當地由良育英高中畢業後，進入日本大學藝術學院。2005年5月5日，與聲優歌手高山南註冊結婚，據悉，因為青山剛昌工作太忙，在截稿期之前都會待在工作場所不外出。而身為著名聲優的高山南同樣十分繁忙，因此兩人總是聚少離多，生活之中總是很難見面。長期持續這樣的生活後，兩人之間已經產生了無法彌補的鴻溝，既然無法繼續生活下去，於是只有分手了。而青山剛昌對此既不否認也不承認，採取了「無可奉告」的態度，2007年12月，與高山南離婚。")
                .font(.callout)
                .padding([.leading, .bottom, .trailing])
                .opacity(opacity)
                .animation(.easeInOut(duration:2))
                .onAppear(){
                    opacity=1
                }
            ScrollView(.horizontal, showsIndicators: true) {
                LazyHStack( spacing: 10, pinnedViews: [.sectionHeaders, .sectionFooters]){
                    Image("作者1")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 180)
                    Image("作者2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180)
                        .clipped()
                    Image("作者3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180)
                        .clipped()
                    Image("作者4")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180)
                        .clipped()
                }
                .padding(.horizontal, 10)
                .frame(height : 250)
                .opacity(opacity)
                .animation(.easeInOut(duration:2))
                .onAppear(){
                    opacity=1
                }
                
            }
        }
        
    }
    
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        AboutEditor()
    }
}
