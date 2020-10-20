//
//  ConanTheaterVersion.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/18.
//

import SwiftUI

struct ConanTheaterVersion: View {
    var ConanMovieName = [
        "引爆摩天樓",
        "第十四號獵物",
        "世紀末的魔術師",
        "瞳孔中的暗殺者",
        "往天國的倒數計時",
        "貝克街的亡靈",
        "迷宮的十字路",
        "銀翼的奇術師",
        "水平線上的陰謀",
        "偵探們的鎮魂歌",
        "紺碧之棺",
        "戰慄的樂譜",
        "漆黑的追跡者",
        "天空的劫難船",
        "沉默的15分鐘",
    ]
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                let Columns = [
                    GridItem(),
                    GridItem()
                ]
                LazyVGrid(columns: Columns){
                    ForEach(1..<16){(index) in
                        NavigationLink(destination: ConanMovieVersionDetail(Nowindex: index)){
                            VStack{
                                Rectangle()
                                    .aspectRatio(3/4,contentMode: .fill)
                                    .overlay( Image("劇場版\(index)")
                                                .resizable()
                                                .clipped())
                                    .clipped()
                                Divider()
                                Text(ConanMovieName[index-1])
                                    .foregroundColor(Color("BugColor"))
                                Divider()
                            }
                            .overlay(
                                Image(systemName: "\(index).square.fill")
                                    .font(.largeTitle)
                                    .background(Color.white)
                                , alignment: .topLeading)
                            .padding([.top, .leading, .trailing])
                        }
                        .accentColor(.black)
                    }
                    
                }
                
            }
            .navigationTitle("柯南劇場版")
        }
    }
    
    
    
}


struct ConanTheaterVersion_Previews: PreviewProvider {
    static var previews: some View {
        ConanTheaterVersion()
    }
}
