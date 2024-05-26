//
//  PopularJobItemView.swift
//  jobbless
//
//  Created by ZGenius on 26/05/2024.
//

import SwiftUI

struct PopularJobItemView: View {
    var body: some View {
        VStack{
            
            HStack(alignment: .top){
                
                VStack(alignment: .leading){
                    Text("Middle UX/UI Designer").font(.title2).foregroundColor(.black)
                    Text("1 year experience Remote").foregroundColor(.black)
                    Text("$1.500 - $2.500").padding(.top).foregroundColor(.black)
                    
                    HStack{
                        VStack{
                            Text("RDC").padding()
                        }.background(Color("main")).cornerRadius(50.0).foregroundColor(.black)
                        
                        VStack{
                            Text("Kinshasa").padding()
                        }.background(Color("main")).cornerRadius(50.0).foregroundColor(.black)
                        
                        VStack{
                            Text("UX UI").padding()
                        }.background(Color("main")).cornerRadius(50.0).foregroundColor(.black)
                    }
                }
                
                Spacer()
                
                VStack{
                    Image(systemName: "heart.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                        .cornerRadius(10.0)
                        .foregroundColor(.black)
                }
                .background(Color("main"))
                .cornerRadius(10.0)
            }.padding()

        }
        .background(.white)
        .cornerRadius(10.0)
    }
}

#Preview {
    PopularJobItemView()
}
