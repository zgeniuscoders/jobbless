//
//  SettingsView.swift
//  jobbless
//
//  Created by ZGenius on 16/05/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack{
            Image("user").resizable().scaledToFit().frame(width: 150)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text("Zgenius Matondo")
                .font(.headline)
            Text("Freelance developper since 2017")
            
            SettingTitleRow(title: "General Settings", iconLeft: "gear")
            SettingTitleRow(title: "My profile", iconLeft: "person.fill")
            SettingTitleRow(title: "Job offers", iconLeft: "heart.fill")
            
            Spacer()
        }
        .padding()
        .background(Color("main"))
    }
}

#Preview {
    SettingsView()
}

struct SettingTitleRow: View {
    var title: String
    var iconLeft: String
  
    var body: some View {
        VStack{
            HStack{
                Image(systemName: iconLeft)
                Text(title).font(.subheadline).padding(.horizontal)
                Spacer()
                Image(systemName: "chevron.right")
                
            }.padding(.vertical)
            Divider()
        }
        
    }
}
