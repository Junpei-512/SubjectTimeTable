//
//  ContentView.swift
//  SubjectTimeTable
//
//  Created by Murayama Junpei on 2021/07/06.
//

import SwiftUI

struct LoginView: View {
    @State private var show: Bool = false
    var body: some View {
        NavigationView {
        VStack{
            HStack {
                HStack{
                    Text("ID:").padding()
                }
                TextField(/*@START_MENU_TOKEN@*/"Input your ID"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 150.0, height: 40.0)
            }
            HStack {
                HStack{
                    Text("PassWord:").padding()
                }
                SecureField(/*@START_MENU_TOKEN@*/"Input your password"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .frame(width: 150.0, height: 40.0)
            }
            NavigationLink(destination: HomeView()) {
            Button(action:{self.show = true}){
                Text("→")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .cornerRadius(25, antialiased: true)
            }
            .sheet(isPresented: self.$show) {
                        HomeView()
                    }
            }
        }
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

