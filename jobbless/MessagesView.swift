//
//  MessagesView.swift
//  jobbless
//
//  Created by ZGenius on 16/05/2024.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            HStack{
                Text("All Messages").font(.title2).bold()
                Spacer()
            }.padding()
            ScrollView{
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
                MessageItem()
            }
        }.background(Color("main"))
    }
}

#Preview {
    MessagesView()
}

struct MessageItem: View {
    var body: some View {
        HStack{
            Image("user").resizable().frame(width: 60,height: 60).aspectRatio(contentMode: .fit).cornerRadius(50)
            
            VStack(alignment: .leading){
                Text("zgenius matondo").bold()
                Text("Hello dear mr zgenius").foregroundColor(.gray)
            }
            
            Spacer()
            Text("10:30").foregroundColor(.gray).font(.caption)
        }.padding(.horizontal)
    }
}
