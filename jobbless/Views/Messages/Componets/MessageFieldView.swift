//
//  MessageFieldView.swift
//  jobbless
//
//  Created by ZGenius on 21/05/2024.
//

import SwiftUI

struct MessageFieldView: View {
    @State private var message = ""
    var body: some View {
        HStack{
            CustomTextFieldView(placeholder: Text("Type ypur message"), text: $message)
            Button{
                message = ""
            }label: {
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(.black)
                    .padding(10)
                    .background(.green)
                    .clipShape(Circle())
            }
        }.padding(.horizontal)
            .padding(.vertical, 10)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 50))
    }
}

#Preview {
    MessageFieldView()
}


struct CustomTextFieldView: View{
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit : () -> () = {}
    
    var body: some View{
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeholder.opacity(0.5)
            }
            TextField("", text: $text,onEditingChanged: editingChanged,onCommit: commit)
        }
    }
}
