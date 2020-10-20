//
//  ConanDetail.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/17.
//

import SwiftUI

struct ConanDetail: View {
    
    let conanRole: ConanRole
    var body: some View {
        ScrollView{
            VStack{
                Image(conanRole.name)
                    .resizable()
                    .frame(height: 250)
                    .clipped()
                Text(conanRole.RoleData)
                    .padding()
            }
            .navigationTitle(conanRole.name)
        }
    }
}

struct ConanDetail_Previews: PreviewProvider {    
    static var previews: some View {
        ConanDetail(conanRole: ConanRole(name: "梓", ConanFamily: "少年偵探團", RoleData: "白羅咖啡廳的服務生。兩度被捲入與手機有關的事件中。在初登場於漫畫第11期，動畫第32話。"))
    }
}
