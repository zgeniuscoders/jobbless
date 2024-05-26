//
//  MessagesView.swift
//  jobbless
//
//  Created by ZGenius on 16/05/2024.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        NavigationStack{
        VStack{
            HStack{
                Text("All Messages").font(.title2).bold()
                Spacer()
            }.padding()
            
                ScrollView{
                    LazyVStack{
                        ForEach(1...12, id:\.self){message in
                            NavigationLink(value: message){
                                MessageItem()
                            }
                        }
                    }
                }.navigationDestination(for: Int.self) { message in
                    MessageView(username: "tshaba", image: "user")
                        .navigationBarBackButtonHidden()
                }
            }.background(Color("main"))
        }
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
                Text("zgenius matondo").bold().foregroundStyle(.black)
                Text("Hello dear mr zgenius").foregroundStyle(.gray)
            }
            
            Spacer()
            Text("10:30").foregroundColor(.gray).font(.caption)
        }.padding(.horizontal)
    }
}
