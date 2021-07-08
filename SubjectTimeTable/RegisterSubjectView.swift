import SwiftUI

struct RegisterSubjectView: View {
    @State private var show: Bool = false
    @State var selectedWeekDay = 0
    let weekDays = ["月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
    let mon1 = ["英語IA", "中国語文法I", "フランス語文法I", "ドイツ語文法I", "スペイン語文法I"]
    let mon2 = ["微分積分A（必修）", "幾何学A", "代数学A", "力学I"]
    let mon3 = ["線形代数A（必修）", "解析学A", "計算機I", "離散代数A"]
    let mon4 = ["情報通信ネットワーク論A", "微分方程式I", "熱力学I", "数学入門A"]
    let mon5 = ["理論化学I", "無機化学I"]
    let mon6 = ["電気工学I", "電子工学I"]
    let mon7 = ["数値解析A", "物理数学I"]
    var body: some View {
        VStack {
            Picker(selection: $selectedWeekDay, label: Text("WeekDay")) {
                ForEach(0 ..< weekDays.count) { num in
                    Text(self.weekDays[num])
                                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 350)
            
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
        }
    }

}

struct RegisterSubjectView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSubjectView()
    }
}
