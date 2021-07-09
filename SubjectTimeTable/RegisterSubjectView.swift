import SwiftUI

struct RegisterSubjectView: View {
    @State private var show: Bool = false
    @State var selectedWeekDay = 0
    //月曜日の科目
    let weekDays = ["月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
    let mon1 = ["中国語文法I", "フランス語文法I", "ドイツ語文法I", "スペイン語文法I"]
    let mon2 = ["微分積分A（必修）"]
    let mon3 = ["線形代数A（必修）"]
    let mon4 = ["情報通信ネットワーク論A", "微分方程式I", "熱力学I", "数学入門A"]
    let mon5 = ["理論化学I", "無機化学I"]
    let mon6 = ["電気工学I", "電子工学I"]
    let mon7 = ["数値解析A", "物理数学I"]
    //火曜日の科目
    let tue1 = ["倫理学I", "知的財産権論I", "日本語表現法I", "日本国憲法I"]
    let tue2 = ["応用心理学I", "科学技術と人間I", "経済学基礎I", "経営学基礎I"]
    let tue3 = ["微分方程式A", "波学I", "熱とエントロピーの物理学I"]
    let tue4 = ["中国語初級I", "フランス語初級I", "ドイツ語初級I", "イタリア語初級I", "スペイン語初級I"]
    let tue5 = ["水理学I", "人間科学I"]
    let tue6 = ["基礎工学I", "土木工学I"]
    let tue7 = ["ものづくり基礎", "クリティカルシンキングI"]
    //水曜日の科目
    let wed1 = ["数理統計学A"]
    let wed2 = ["アルゴリズム数理A", "有機化学I", "地学基礎I"]
    let wed3 = ["英語IIA", "科学技術英語IIA", "English Communication IIA"]
    let wed4 = ["日本文学基礎", "英米文学基礎", "論説文基礎", "日本古典I"]
    let wed5 = ["科学技術のための数学I", "科学技術のためのプログラミングI"]
    let wed6 = ["ネットワーク基礎I", "サーバー基礎I"]
    let wed7 = ["機械学習I", "アーティフィシャル・インテリジェンス　I"]
    //木曜日の科目
    let thu1 = ["英語IA", "科学技術英語IA", "English Communication IA"]
    let thu2 = ["微分積分A演習（必修）"]
    let thu3 = ["線形代数A演習（必修）"]
    let thu4 = ["数値解析学A", "基礎力学I", "知識工学I", "偏微分方程式I"]
    let thu5 = ["情報数学I", "解析学I"]
    let thu6 = ["コンピュータ・グラフィック論I", "画像解析I"]
    //金曜日の科目
    let fri1 = ["ゲーム理論A"]
    let fri2 = ["電算科学I", "海洋科学I", "淡水科学I"]
    let fri3 = ["民法I", "刑法I", "労働基準法I"]
    let fri4 = ["所得税法I", "派遣法I"]
    let fri5 = ["Android概論I", "iOS概論I"]
    //土曜日の科目
    let sat1 = ["公務員講習"]
    let sat2 = ["教員講習"]
    let sat3 = ["世界経済I"]
    var body: some View {
        VStack {
            Picker(selection: $selectedWeekDay, label: Text("WeekDay")) {
                ForEach(0 ..< weekDays.count) { num in
                    Text(self.weekDays[num])
                                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 350)
            
            if(selectedWeekDay == 0){
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<mon1.count){
                            index in
                            Text(self.mon1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<mon2.count){
                            index in
                            Text(self.mon2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<mon3.count){
                            index in
                            Text(self.mon3[index])
                        }
                    }
                    Section(header: Text("４限")){
                        ForEach(0..<mon4.count){
                            index in
                            Text(self.mon4[index])
                        }
                    }
                    Section(header: Text("５限")){
                        ForEach(0..<mon5.count){
                            index in
                            Text(self.mon5[index])
                        }
                    }
                    Section(header: Text("６限")){
                        ForEach(0..<mon6.count){
                            index in
                            Text(self.mon6[index])
                        }
                    }
                    Section(header: Text("７限")){
                        ForEach(0..<mon7.count){
                            index in
                            Text(self.mon7[index])
                        }
                    }
                }

            } else if (selectedWeekDay == 1) {
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<tue1.count){
                            index in
                            Text(self.tue1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<tue2.count){
                            index in
                            Text(self.tue2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<tue3.count){
                            index in
                            Text(self.tue3[index])
                        }
                    }
                    Section(header: Text("４限")){
                        ForEach(0..<tue4.count){
                            index in
                            Text(self.tue4[index])
                        }
                    }
                    Section(header: Text("５限")){
                        ForEach(0..<tue5.count){
                            index in
                            Text(self.tue5[index])
                        }
                    }
                    Section(header: Text("６限")){
                        ForEach(0..<tue6.count){
                            index in
                            Text(self.tue6[index])
                        }
                    }
                    Section(header: Text("７限")){
                        ForEach(0..<tue7.count){
                            index in
                            Text(self.tue7[index])
                        }
                    }
                }

            } else if (selectedWeekDay == 2){
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<wed1.count){
                            index in
                            Text(self.wed1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<wed2.count){
                            index in
                            Text(self.wed2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<wed3.count){
                            index in
                            Text(self.wed3[index])
                        }
                    }
                    Section(header: Text("４限")){
                        ForEach(0..<wed4.count){
                            index in
                            Text(self.wed4[index])
                        }
                    }
                    Section(header: Text("５限")){
                        ForEach(0..<wed5.count){
                            index in
                            Text(self.wed5[index])
                        }
                    }
                    Section(header: Text("６限")){
                        ForEach(0..<wed6.count){
                            index in
                            Text(self.wed6[index])
                        }
                    }
                    Section(header: Text("７限")){
                        ForEach(0..<wed7.count){
                            index in
                            Text(self.wed7[index])
                        }
                    }
                }

            } else if (selectedWeekDay == 3){
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<thu1.count){
                            index in
                            Text(self.thu1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<thu2.count){
                            index in
                            Text(self.thu2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<thu3.count){
                            index in
                            Text(self.thu3[index])
                        }
                    }
                    Section(header: Text("４限")){
                        ForEach(0..<thu4.count){
                            index in
                            Text(self.thu4[index])
                        }
                    }
                    Section(header: Text("５限")){
                        ForEach(0..<thu5.count){
                            index in
                            Text(self.thu5[index])
                        }
                    }
                    Section(header: Text("６限")){
                        ForEach(0..<thu6.count){
                            index in
                            Text(self.thu6[index])
                        }
                    }
                }

            } else if (selectedWeekDay == 4){
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<fri1.count){
                            index in
                            Text(self.fri1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<fri2.count){
                            index in
                            Text(self.fri2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<fri3.count){
                            index in
                            Text(self.fri3[index])
                        }
                    }
                    Section(header: Text("４限")){
                        ForEach(0..<fri4.count){
                            index in
                            Text(self.fri4[index])
                        }
                    }
                    Section(header: Text("５限")){
                        ForEach(0..<fri5.count){
                            index in
                            Text(self.fri5[index])
                        }
                    }
                }

            } else if (selectedWeekDay == 5){
                List{
                    Section(header: Text("１限")){
                        ForEach(0..<sat1.count){
                            index in
                            Text(self.sat1[index])
                        }
                    }
                    Section(header: Text("２限")){
                        ForEach(0..<sat2.count){
                            index in
                            Text(self.sat2[index])
                        }
                    }
                    Section(header: Text("３限")){
                        ForEach(0..<sat3.count){
                            index in
                            Text(self.sat3[index])
                        }
                    }
                }

            }
            
            
            
        }
    }

}

struct RegisterSubjectView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSubjectView()
    }
}
