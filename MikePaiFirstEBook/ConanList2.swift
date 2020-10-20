//
//  ConanList2.swift
//  MikePaiFirstEBook
//
//  Created by 白謹瑜 on 2020/10/18.
//

import SwiftUI

struct ConanList2: View {
    let ConanRoles : ConanFamily
    var body: some View {
        if ConanRoles.FamilyDetail == 0{
            List(ConanRolesDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : ConanRolesDetail[item])){
                    ConanRow(conanRole: ConanRolesDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)
            
        }else if ConanRoles.FamilyDetail == 1{
            List(GontenRolesDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : GontenRolesDetail[item])){
                    ConanRow(conanRole: GontenRolesDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)
        }else if ConanRoles.FamilyDetail == 2{
            List(MoliLanRolesDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : MoliLanRolesDetail[item])){
                    ConanRow(conanRole: MoliLanRolesDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)
        }else if ConanRoles.FamilyDetail == 3{
            List(ALiRolesDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : ALiRolesDetail[item])){
                    ConanRow(conanRole: ALiRolesDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)

        }else if ConanRoles.FamilyDetail == 4{
            List(GonYeRoleDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : GonYeRoleDetail[item])){
                    ConanRow(conanRole: GonYeRoleDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)
        }else if ConanRoles.FamilyDetail == 5{
            List(ChiJinRoleDetail.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : ChiJinRoleDetail[item])){
                    ConanRow(conanRole: ChiJinRoleDetail[item])
                }
            }
            .navigationTitle(ConanRoles.name)
        }else if ConanRoles.FamilyDetail == 6{
            List(CoffeeShopRole.indices){(item)in
                NavigationLink(
                    destination: ConanDetail(conanRole : CoffeeShopRole[item])){
                    ConanRow(conanRole: CoffeeShopRole[item])
                }
            }
            .navigationTitle(ConanRoles.name)
        }
        
    }
    let ConanRolesDetail = [
        ConanRole(name: "柯南", ConanFamily: "少年偵探團", RoleData: "17歲，生日5月4日，是毛利蘭的青梅竹馬兼男友。被黑暗組織成員Gin灌下毒藥APTX4869後，身體縮小成小學生的模樣，之後為了避免自己的真實身份曝光招致危險，化名為江戶川柯南。寄住在毛利 偵探事務所，以便調查黑暗組織。身上的道具都是阿笠博士發明的。常用手錶行麻醉槍射昏小五郎，再用變聲器進行推理。喜歡踢足球。是個音痴。喜歡吃檸檬派， 討厭吃葡萄乾。有「日本警察救世主」、「關東的名偵探」、「平成的福爾摩斯」之稱。初登場於漫畫第1期，動畫第1話。據小哀描述，若吃太多可能會對藥物產生抗體，而可能再也無法恢復回新一"),
        ConanRole(name: "灰原", ConanFamily: "少年偵探團", RoleData: "主線劇情的重要人物，18歲（外表7歲），東京都米花市帝丹小學1年B班，宮野志保身體縮小後的身份，對柯南抱有好感，但未明顯表現出來。本來是黑暗組織的成員，代號「Sherry」。後來背叛組織，被阿笠博士收留。初登場於漫畫第18期，動畫第129話。"),
        ConanRole(name: "步美", ConanFamily: "少年偵探團", RoleData: "7歲，體重15公斤，東京都米花市帝丹小學1年B班。天真無邪又善良，喜歡主動幫助別人，好奇心和正義感很強，性格活潑可愛、聰明伶俐，行動力十足，令圓谷光彥和小島元太為之喜愛。喜歡假面超人，愛吃壽司，夢想環遊世界，交際能力較強。初登場於漫畫第2期，動畫第1話。"),
        ConanRole(name: "光彥", ConanFamily: "少年偵探團", RoleData: "7歲，體重15公斤，東京都米花市帝丹小學1年B 班。雙親都是任職老師，家中有一姊姊圓谷朝美。喜歡閱讀及吸取知識，堅信科學，不相信鬼怪。在同年齡的孩童中顯得博學，了解各方面的知識很豐富，但當然遠 比不上接近成年的江戶川柯南和灰原哀的程度，因此很羨慕柯南和小哀的學識，也因為學識不如柯南偶爾會在小哀和吉田步美面前顯露自卑的情緒。在柯南的薰陶下，偵探水平有了很大的提高，可以自己解決簡單的案子了。喜歡假面超人。在劇場版《往天國的倒數計時》中，曾苦惱自己同時喜歡步美及小哀，後來相信自己喜歡小哀。初登場於漫畫第2期，動畫第1話。"),
        ConanRole(name: "元太", ConanFamily: "少年偵探團", RoleData: "7歲，體重45公斤，東京都米花市帝丹小學1年B班。父親是小島元次，家裡經營酒館，名叫「小島酒館」。雖然有時會胡亂說話，但卻充滿正義感。是少年偵探團的成員、發起人，經常自稱是少年偵探團團長。認為江戶川柯南是自己的手下，但實際上卻幾乎是由柯南指揮行動。推理能力卻是最差的，有時還會有與圓谷光彥和吉田步美做出愚蠢的推理或無稽之談。把學校里自己的鞋櫃改成了接受偵探委託的信箱。喜歡假面超人。食量極大，愛吃鰻魚飯，想任何事情都會先向食物方面想，一聽到數額巨大的金錢時，就喜歡拿鰻魚飯做比較。和光彥一樣喜歡步美，所以對柯南也有自然排斥。初登場於漫畫第2期，動畫第1話。")
    ]
    let GontenRolesDetail = [
        ConanRole(name: "新一", ConanFamily: "工藤家", RoleData: "男主角的成人身分。17歲，生日5月4日，是毛利蘭的青梅竹馬兼男友，東京都米花市帝丹高中2年B班，高中生偵探。因為推理能力一流，有平成年代的福爾摩斯和日本警察的教世主之稱。被黑暗組織成員琴酒灌下毒藥APTX4869後，身體縮小成小學生的模樣，之後為了避免自己的真實身份曝光招致危險，化名為江戶川柯南。"),
        ConanRole(name: "優作", ConanFamily: "工藤家", RoleData: "世界知名的推理小說家，也是首屈一指的名偵探。兒子是高中生偵探工藤新一，妻子是曾為世界著名演員的工藤有希子；與鄰居阿笠博士、警視廳警部目暮十三是老朋友，和黑羽盜一（初代怪盜基德）是亦敵亦友的關係。擁有非常強大的推理能力，水平遠在新一之上，能夠一眼看穿事件的真相。也是目暮警部、阿笠博士遇到瓶頸時諮詢的對象。在各方面能力都很出色，擁有多項交通工具的駕駛執照，曾在夏威夷教導新一射擊、駕駛汽車、飛機、直升機、快艇等等。除了寫小說之外，也曾設計過遊戲場景。灰原哀推測新一的推理能力是繼承自其父親。"),
        ConanRole(name: "有希子", ConanFamily: "工藤家", RoleData: "37歲，原名藤峰有希子，日本女演員，工藤新一的母親。是最先發現小哀對自己的兒子有愛慕之心，與莎朗溫雅德（即貝爾摩得）相識，兩人年輕時皆與黑羽盜一學習易容術，命曾化名江戶川文代。"),
    ]

    let MoliLanRolesDetail = [
        ConanRole(name: "小蘭", ConanFamily: "毛利家", RoleData: "女主角，17歲，東京都米花市帝丹高中2年B班，擅長空手道，個性溫柔善良，是空手道部主將。毛利小五郎和妃英理的女兒，鈴木園子和遠山和葉的好友。工藤新一的青梅竹馬及同學。喜歡新一，後來在倫敦意外被新一告白，於漫畫1004話正式給新一的告白回覆，兩人正式成為情侶。和新一曾經意外救了苦艾酒一命而被苦艾酒稱為「Angel」。"),
        ConanRole(name: "小五郎", ConanFamily: "毛利家", RoleData: "38歲，私家偵探，開設「毛利偵探事務所」，毛利蘭的父親，與妃英理是青梅竹馬的夫妻，兩人目前分居中。大多數時候頭腦迷糊且好色，非常喜歡喝酒，閒閒沒事就會打麻將、賽馬或是打小鋼珠。因柯南使用變聲蝴蝶結和麻醉槍協助解決案件後，藉此聲名大噪，變成全國知名的名偵探，人稱「沉睡小五郎」。曾經是一名刑警，也有一定推理實力，善於柔道，槍法極準。只要案件跟周遭重要的人扯上關係便會變一個人，甚至可以靠自己實力找出真兇。沖野洋子的超級大粉絲。"),
        ConanRole(name: "英理", ConanFamily: "毛利家", RoleData: "高中時期因為頭腦極好、才色雙全，被稱為「帝丹女王」；在高一時就以滿分的成績完成了東都大學的入學考試題目，獲得了哈佛大學邀請留學的資格。曾與外號「帝丹公主」的工藤有希子角逐「帝丹小姐」的稱號，結果難分軒輊，後來和青梅竹馬的小五郎結婚。雖然是個溫柔體貼的母親，但她的料理手藝極為差勁，本人卻毫不自覺。因為忍著腳傷替小五郎作飯，反被他訓斥而賭氣分居。分居後的職業為律師，自己開設「妃法律事務所」，助理為栗山綠；從未輸過任何一場官司，被稱為「法庭女王」。"),
        
    ]

    let ALiRolesDetail = [
        ConanRole(name: "阿笠博士", ConanFamily: "阿笠家", RoleData: "主線劇情的重要人物，18歲（外表7歲），東京都米花市帝丹小學1年B班，宮野志保身體縮小後的身份，對柯南抱有好感，但未明顯表現出來。本來是黑暗組織的成員，代號「Sherry」。後來背叛組織，被阿笠博士收留。初登場於漫畫第18期，動畫第129話。"),
        ConanRole(name: "灰原", ConanFamily: "阿笠家", RoleData: "52歲，工藤新一的鄰居，科學家和發明家，第一個知道柯南真實身份的人，他要柯南寄宿在毛利小五郎家中(謊稱其為遠房親戚)，而一個發明家，熱衷於科學實驗，是工藤新一的鄰居，未婚。自稱天才發明家，替柯南製造不少道具，是工藤優作與工藤有希子的老朋友，在他們去美國後，代為照顧新一，是新一可靠的精神支柱，時常提供新一許多信息。阿笠博士十分喜愛孩子，經常帶著少年偵探團外出露營。不過車經常出毛病。在新一家門口發現了逃離黑暗組織、同樣幼年化後的灰原哀，並讓其寄住在自己家裡。畢業於帝丹小學。初登場於漫畫第1期，動畫第1話。"),
        ConanRole(name: "沖矢昻", ConanFamily: "阿笠家", RoleData: "FBI幹員，與茱蒂·史坦琳一樣同屬詹姆士·布拉克的手下。詐死後以沖矢昴身分登場。是名能力相當優秀的幹員，擅長截拳道，狙擊能力更是一流（曾用狙擊槍從700碼外射傷琴酒，射程遠超過組織的香緹及柯倫），曾在劇場版異次元的狙擊手中被提姆‧韓特稱作是「最強狙擊手」。和柯南同時被Vermouth稱作是能擊穿組織心臟的「銀色子彈」。初登場於漫畫第29期，動畫第230話。"),
    ]
    let GonYeRoleDetail = [
        ConanRole(name: "厚司", ConanFamily: "宮野家", RoleData: "人稱「被科學界放逐的瘋狂科學家」，和阿笠博士在新發明的發布會上相識；是宮野明美與宮野志保（灰原哀）的父親。後來為組織工作，但與妻子離奇死亡，組織成員聲稱兩人是死於「意外事故」。"),
        ConanRole(name: "愛蓮娜", ConanFamily: "宮野家", RoleData: "組織的科學家，英國人，褐色長髮、戴著眼鏡；是明美和志保的母親。個性沉默寡言，被稱為「墮入地獄的天使」（Hell Angel）。工作是與丈夫宮野厚司一起研究「讓死人復活的神秘藥物」——「銀色子彈」（Silver Bullet，シルバー・ブレット）。之後和丈夫離奇死亡；生前透過明美留給志保編號「1～20」共4捲錄音帶，內容是志保1至20歲的生日祝福留言，因此被柯南稱為「真正的天使」。此外，她留給志保18歲生日的留言結尾處告訴志保：「還有，我想該是告訴妳的時候了，其實媽媽我……」，告訴志保自己正在研究神秘藥物，並且因為要完成研究而不得不離開她。"),
        ConanRole(name: "明美", ConanFamily: "宮野家", RoleData: "化名廣田雅美，是宮野志保（即灰原哀）的姐姐、黑暗組織的成員。公開身分是銀行行員，並以其男友赤井秀一及灰原哀脫離組織為條件執行搶案；但事後遭琴酒滅口，臨死之前得知柯南的真實身分。因宮野夫婦的死使其成為灰原唯一的親人，所以她的死對灰原打擊很大。此外，她也是赤井秀一的女朋友；當年赤井為了臥底於黑暗組織，也是因其而得以接觸身為重要科學家的灰原與琴酒等高級幹部。明美雖然知道這件事情，仍希望在脫離組織後能夠重新和他交往，可惜未果。"),
        ConanRole(name: "灰原", ConanFamily: "宮野家", RoleData: "主線劇情的重要人物，18歲（外表7歲），東京都米花市帝丹小學1年B班，宮野志保身體縮小後的身份，對柯南抱有好感，但未明顯表現出來。本來是黑暗組織的成員，代號「Sherry」。後來背叛組織，被阿笠博士收留。"),
    ]
    let ChiJinRoleDetail = [
        ConanRole(name: "務武", ConanFamily: "赤井家", RoleData: "赤井秀一、世良真纯、羽田秀吉的父親。疑似在追查黑暗組織時死亡但至今並未找到屍體。"),
        ConanRole(name: "領域外的妹妹", ConanFamily: "赤井家", RoleData: "與世良真純同住在帝都飯店的神祕少女，本名不祥，與世良長相相似。有著和赤井秀一、世良真純相似的眼影。似乎身體虛弱，與世良真純同住在酒店中，被世良稱作「媽媽」。外型是國中生，卻有著大人的冷靜與判斷力，並看穿柯南的竊聽器，認為柯南還不到可以信任的程度。表示「如果柯南不能成為期待的人選的話，我們必須立刻抽身離開，探索新的領域。」但由於小蘭、園子跟來而泡湯。曾看名人羽田秀吉戰將棋比賽，在秀吉贏得比賽後十分開心，但沒有告訴世良。柯南在思考世良真純來日本的真正目的時，聯想到「領域外的妹妹」的名字似乎是瑪麗，但在猜測她同世良真純的關係時被灰原哀打斷。在漫畫第972話（動畫881集），證實是赤井秀一、羽田秀吉、世良真純的母親。"),
        ConanRole(name: "赤井秀一", ConanFamily: "赤井家", RoleData: "FBI幹員，與茱蒂·史坦琳一樣同屬詹姆士·布拉克的手下。詐死後以沖矢昴身分登場。是名能力相當優秀的幹員，擅長截拳道，狙擊能力更是一流（曾用狙擊槍從700碼外射傷琴酒，射程遠超過組織的香緹及柯倫），曾在劇場版異次元的狙擊手中被提姆‧韓特稱作是「最強狙擊手」。和柯南同時被Vermouth稱作是能擊穿組織心臟的「銀色子彈」。初登場於漫畫第29期，動畫第230話。"),
        ConanRole(name: "秀吉", ConanFamily: "赤井家", RoleData: "28歲，人稱太閤名人，是一名將棋棋士，擁有瞬間記憶，推理能力也不錯。宮本由美的前男友，被其喊做中吉。因幾年前由美的一句玩笑話「如果這種像王一樣的男人成為丈夫，他的妻子也一定好像女王一樣呢！」，而決定瞞著她成為將棋中的七冠王，在902話成功達成七冠王，後於947話中失去王將頭銜，目前得到了六個頭銜。漫畫972話中證實為世良的二哥。947話裡透露服用APTX4869死亡名單上的「羽田浩司」為其義兄。初登場於漫畫第80期及第899話，動畫第731話。"),
        ConanRole(name: "世良真純", ConanFamily: "赤井家", RoleData: "17歲，東京都米花市帝丹高中2年B班。自稱偵探，善於截拳道。於日本出生，是家中排行老三，3年前與父母移民美國，剛剛回國，現正入住酒店，但於漫畫971話被柯南發現她留學的並非美國而是英國。因身穿裙子才令毛利蘭及園子得知她是女生，並成為其好友。過去曾經與新一和毛利蘭見過面，並在心中稱呼柯南為「魔法師」；柯南對她的虎牙也感到似曾相識。初次在「幽靈飯店事件」登場，疑似故意做出錯誤推理測試新一。曾被基德所假扮。在漫畫第801話及821話當中，證實赤井秀一為他的親生大哥，972話證實羽田秀吉為其二哥。初登場於漫畫第73期，動畫第646話。"),
    ]
    let CoffeeShopRole = [
        ConanRole(name: "梓", ConanFamily: "白羅咖啡廳", RoleData: "白羅咖啡廳的服務生。兩度被捲入與手機有關的事件中。在初登場於漫畫第11期，動畫第32話。"),
        ConanRole(name: "安室", ConanFamily: "白羅咖啡廳", RoleData: "本名降谷零，化名安室透；是日本公安警察派遣至組織的臥底。29歲。組織為了尋找雪莉（灰原哀）派出的偵探，公開身分是波洛咖啡廳的服務生。與苦艾酒被琴酒稱為「秘密主義者」，似乎和警視廳殉職警官伊達航有密切關係。具有一流的情報收集能力、觀察力以及洞察力，曾向毛利小五郎拜師而成為他的弟子，並對柯南的身份產生了興趣。對赤井秀一相當反感，曾請苦艾酒將自己偽裝成燒傷的赤井來試探FBI；後來推斷赤井未死且認定他就是現居於新一家中的沖矢昴，並親自到新一家揭露他的身分，但還是被事先預料此事的柯南和工藤優作蒙騙過去。也曾試圖於鈴木號列車將灰原帶回組織，但因柯南與怪盜基德等人的設計而未能如願。初登場於漫畫第793話，動畫第667話。"),
                  
    ]

}

struct ConanList2_Previews: PreviewProvider {
    static var previews: some View {
        ConanList2(ConanRoles:  ConanFamily(name: "柯南", FamilyDetail: 1))
    }
}

