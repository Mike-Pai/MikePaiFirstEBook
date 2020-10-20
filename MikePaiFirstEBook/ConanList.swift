//
//  ContentView.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/16.
//

import SwiftUI

struct ConanList: View {
    var body: some View {
        NavigationView{
                List{
                    Section(header: Text("主要登場人物")){
                        ForEach(ConanFamilys.indices){(item)in
                            NavigationLink(
                                destination: ConanList2(ConanRoles: ConanFamilys[item])){
                                ConanFamilyRow(conanFamilys: ConanFamilys[item])
                            }
                        }
                    }
                    .listRowInsets(EdgeInsets())
                    Section(header: Text("關西地區親友")){
                        
                    }
                    Section(header: Text("黑暗組織")){
                        
                    }
                    Section(header: Text("日本警察")){
                        
                    }
                    Section(header: Text("名偵探")){
                        
                    }
                    Section(header: Text("美國FBI")){
                        
                    }
                
            }
            .navigationTitle("角色介紹")
        }
    }
    let ConanFamilys = [
        ConanFamily(name: "少年偵探團", FamilyDetail: 0),
        ConanFamily(name: "工藤家", FamilyDetail: 1),
        ConanFamily(name: "毛利家", FamilyDetail: 2),
        ConanFamily(name: "阿笠家", FamilyDetail: 3),
        ConanFamily(name: "宮野家", FamilyDetail: 4),
        ConanFamily(name: "赤井家", FamilyDetail: 5),
        ConanFamily(name: "白羅咖啡廳", FamilyDetail: 6)
    ]
}




struct ConanList_Previews: PreviewProvider {
    static var previews: some View {
        ConanList()
    }
}


