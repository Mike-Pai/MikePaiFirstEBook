//
//  ConanMovieVersionDetail.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/18.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct ConanMovieVersionDetail: View {
        
    @State var play = true
    let commandCenter = MPRemoteCommandCenter.shared()
    let player = AVPlayer()
    
    var Nowindex: Int
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
    @State private var opacity: Double = 0
    @State private var show = false
    var body: some View {
        List{
            
            HStack{
                VStack{
                    
                    Image("劇場版\(Nowindex)")
                        .resizable()
                        .padding(.vertical)
                        .scaledToFill()
                        .frame(width: 120, height: 150)
                        .opacity(opacity)
                        .animation(.easeInOut(duration:2))
                        .onAppear{
                            self.opacity = 1
                        }
                    Text(ConanMovieName[Nowindex - 1])
                        .opacity(opacity)
                        .animation(.easeInOut(duration:2))
                        .onAppear{
                            self.opacity = 1
                        }
                    HStack{
                        Image(systemName: "play.circle")
                        Link("立即觀看", destination: URL(string: "http://www.gimyvod.com/video/34761.html")!)
                            .font(.title3)
                            .foregroundColor(.orange)
                    }
                    
                }
                Text("劇情簡介：柯南用新一的身份在電話不自願地約會了小蘭，陪她看5月3日的午夜場電影，以便請求小蘭替他參加森谷帝二教授舉辦的茶會。柯南為此十分煩惱，不知如何掩飾他變小的事實。目送小蘭離開後，柯南接到一個電話，是來歷不明的炸彈客挑戰柯南！少年偵探團收到的引爆遙控飛機、被安裝了炸彈並裝著小貓的寵物籃，還有東都環狀線的五顆炸彈陷阱，大家奮力推理，才及時預防了可能發生的意外。可是，最後被安裝了炸彈的地點其實是工藤新一和小蘭的約會地點－米花市政大樓！柯南該怎麼辦呢？")
                    .font(.caption)
                    .padding()
                Spacer()
                
            }
            
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"ConanMusic",withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                self.commandCenter.playCommand.addTarget {  event in
                    if self.player.rate == 0.0 {
                        self.player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                self.commandCenter.pauseCommand.addTarget {  event in
                    if self.player.rate == 1.0 {
                        self.player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                LazyHStack{
                    Image(systemName: play ? "headphones.circle" : "pause.circle")
                        .resizable()
                        .frame(width:30,height:30)
                        .foregroundColor(Color.red)
                    Text("主題曲：名探偵コナンメイン・テーマ")
                        .font(.headline)
                        .foregroundColor(.red)
                }
               
            }
            VStack(alignment: .leading){
                Text("片名：名偵探柯南：引爆摩天樓")
                Text("日本語：名探偵コナン 時計じかけの摩天楼")
                Text("導演：兒玉兼嗣")
                Text("原作：青山剛昌")
                Text("腳本：古內一成")
                Text("片長：95分票房")
                Text("主題曲：Happy Birthday")
                Text("票房：11億日圓")
                Text("演唱：杏子")
                
            }
            VStack{
                Text("劇照欣賞")
                    .font(.title)
                    .padding(.top)
                TabView{
                    ForEach(1..<6){(index) in
                        Image("01-\(index)")
                            .resizable()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(width: 320, height: 350)
                .padding()
            }
            ScrollView(.horizontal){
                let row = [
                    GridItem()
                ]
                LazyHGrid(rows: row){
                    ForEach(1..<16){(index) in
                        NavigationLink(destination: ConanMovieVersionDetail(Nowindex: index)){
                            VStack{
                                Image("劇場版\(index)")
                                    .resizable()
                                    .clipped()
                                    .frame(width: 100, height: 100)
                                    .rotation3DEffect(
                                        Angle(degrees: -15),
                                        axis: (x: 0.0, y: 1.0, z: 0.0)
                                    )
                                    .opacity(opacity)
                                Text(ConanMovieName[index-1])
                                    .font(.caption)
                                    .opacity(opacity)
                            }
                            .animation(.easeInOut(duration: 2))
                            
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
            }
        }
        .navigationTitle("真相只有一個！！")
    }
}

struct ConanMovieVersionDetail_Previews: PreviewProvider {
    static var previews: some View {
        ConanMovieVersionDetail(Nowindex: 2)
    }
}

//English：Detective Conan: The Time Bomb 原作：青山剛昌          ")
