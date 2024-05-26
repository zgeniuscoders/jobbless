//
//  JobDetailsView.swift
//  jobbless
//
//  Created by ZGenius on 21/05/2024.
//

import SwiftUI

struct JobDetailsView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Image(systemName: "heart.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                        .cornerRadius(10.0)
                        .foregroundColor(.black)
                }
                .background(.white)
                .cornerRadius(10.0)
                Spacer()
                Text("UI UX Designer").font(.headline)
                Spacer()
                VStack{
                    Image(systemName: "heart.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                        .cornerRadius(10.0)
                        .foregroundColor(.black)
                }
                .background(.white)
                .cornerRadius(10.0)
            }.padding()
            
            Text("UI UX Designer").font(.title).bold()
            HStack{
                VStack{
                    Text("RDC").padding()
                }.background(.white).cornerRadius(50.0).foregroundColor(.black)
                
                VStack{
                    Text("Kinshasa").padding()
                }.background(.white).cornerRadius(50.0).foregroundColor(.black)
                
                VStack{
                    Text("UX UI").padding()
                }.background(.white).cornerRadius(50.0).foregroundColor(.black)
            }.padding(.vertical,20)
            
                VStack{
                    VStack(alignment: .leading){
                        Text("Jobs Description").font(.headline).padding()
                        Text("Dropbox is looking for talented designer,  Illustrator to expand our team")
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        
                        Text("Requirements").font(.headline).padding()
                    }
                    
                    Spacer()
                    
                    Button{
                        print("Hello")
                    }label: {
                        Text("Send Request").padding().foregroundStyle(.white)
                    }.background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                    
                }.background(.white).clipShape(RoundedRectangle(cornerRadius: 10))
        
        }.background(Color("main"))
    }
}

#Preview {
    JobDetailsView()
}
