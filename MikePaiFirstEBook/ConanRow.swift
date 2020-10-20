//
//  ConanRow.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/17.
//

import SwiftUI

struct ConanRow: View {
    let conanRole : ConanRole
    var body: some View {
        HStack{
            RolePhoto(conanRole: conanRole)
            VStack(alignment:.leading){
                Text(conanRole.name)
                Text(conanRole.ConanFamily)
            }
               Spacer()
        }
    }
}

struct ConanFamilyRow: View {
    let conanFamilys : ConanFamily
    var body: some View {
        HStack(alignment: .center){
            Image(conanFamilys.name)
                .resizable()
                .frame(width: 95, height: 100)
                .clipped()
            VStack(alignment:.leading){
                Text(conanFamilys.name)
                    .font(.title)
            }
               Spacer()
        }
    }
}

struct ConanRow_Previews: PreviewProvider {
    static var previews: some View {
        ConanRow(conanRole: ConanRole(name: "柯南", ConanFamily: "少年偵探團", RoleData: "7歲，體重45公斤，東京都米花市帝丹小學1年B 班。父親是小島元次，家裡經營酒館，名叫「小島酒館」。雖然有時會胡亂說話，但卻充滿正義感。是少年偵探團的成員、發起人，經常自稱是少年偵探團團長。認為江戶川柯南是自己的手下，但實際上卻幾乎是由柯南指揮行動。推理能力卻是最差的，有時還會有與圓谷光彥和吉田步美做出愚蠢的推理或無稽之談。把學校里自 己的鞋櫃改成了接受偵探委託的信箱。喜歡假面超人。食量極大，愛吃鰻魚飯，想任何事情都會先向食物方面想，一聽到數額巨大的金錢時，就喜歡拿鰻魚飯做比較。和光彥一樣喜歡步美，所以對柯南也有自然排斥。初登場於漫畫第2期，動畫第1話。"))
    }
}

struct RolePhoto: View {
    let conanRole:ConanRole
    var body: some View {
        Image(conanRole.name)
            .resizable()
            .scaledToFill()
            .frame(width: 95, height: 100)
            .clipped()
            .clipShape(Circle())
    }
}
