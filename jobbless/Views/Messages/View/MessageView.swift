//
//  MessageView.swift
//  jobbless
//
//  Created by ZGenius on 19/05/2024.
//

import SwiftUI

struct MessageView: View {
    let username: String
    let image: String
    
    var body: some View {
        VStack{
            HStack{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60,height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text(username).font(.headline)
                    Text("online").foregroundStyle(.green)
                }
                
                Spacer()
                
            }
            ScrollView{
                VStack{
                    MessageItemView(message: "Hello zgenius how goes it",isSender: true)
                    MessageItemView(message: "Hello",isSender: false)
                    MessageItemView(message: "Long time no see",isSender: false)
                }
            }
            MessageFieldView()
        }.padding()
            .background(Color("main"))
        Spacer()
    }
}

#Preview {
    MessageView(username: "zgeniuscoders", image: "user")
}

struct MessageItemView: View {
    let message: String
    let isSender: Bool
    
    @State private var isShowTime = false
    
    var body: some View {
        VStack(alignment: isSender ? .trailing : .leading){
            HStack{
                Text(message).foregroundStyle(.black)
                    .padding()
                    .background(isSender ? .green : .white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                
            }.frame(maxWidth: 360, alignment: isSender ? .trailing : .leading).onTapGesture {
                isShowTime.toggle()
            }
            
            if isShowTime {
                Text("10:00").foregroundStyle(.gray).font(.caption).padding(.horizontal)
            }
            
        }.frame(maxWidth: .infinity, alignment: isSender ? .trailing : .leading)
    }
}
