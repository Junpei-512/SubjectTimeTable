//
//  HomeView.swift
//  SubjectTimeTable
//
//  Created by Murayama Junpei on 2021/07/06.
//

import SwiftUI

struct HomeView: View {
    @State private var show: Bool = false
    var body: some View {
        VStack{
            Text("履修登録").padding()
            Button(action:{self.show = true}){
                Text("+")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(25, antialiased: true)
            }
        }
    }
}

