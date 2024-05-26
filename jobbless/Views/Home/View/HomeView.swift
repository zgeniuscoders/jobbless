//
//  HomeView.swift
//  jobbless
//
//  Created by ZGenius on 16/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack {

                    HStack{
                        VStack{
                            Image("user").resizable().frame(width: 60,height: 60).aspectRatio(contentMode: .fit).cornerRadius(50)
                        }
                        VStack(alignment: .leading){
                            Text("zgenius coders").bold()
                            Text("welcome back to your account")
                        }
                        Spacer()
                        Image(systemName: "magnifyingglass")
                    }.padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHStack{
                            CategoryItemView(title: "UX UI")
                            CategoryItemView(title: "Web developpement")
                            CategoryItemView(title: "Mobile developpement")
                            CategoryItemView(title: "Datascience")
                            CategoryItemView(title: "Dev ops")
                            CategoryItemView(title: "Community Manager")
                        }.padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading){
                        Text("Popular Jobs").fontWeight(.medium)
                            .padding(.top,5)
                            .padding(.horizontal)
                        
                    
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            LazyHStack{
                                ForEach(0...10,id:\.self){ listing in
                                    NavigationLink(value: listing){
                                        PopularJobItemView()
                                    }
                                }
                                
                            }.padding(.horizontal)
                        }.navigationDestination(for: Int.self){ listing in
                            JobDetailsView().navigationBarBackButtonHidden()
                        }
                        
                        Text("Recent Jobs").fontWeight(.medium)
                            .padding(.top,5)
                            .padding(.horizontal)
                        
                        RecentJob()
                        RecentJob()
                        RecentJob()
                        RecentJob()
                        RecentJob()
                        RecentJob()
                        RecentJob()
                        
                    }
                   
                }
            }
            .refreshable {
                print("Debug")
            }
            .background(Color("main"))
        }
        
    }
}

#Preview {
    HomeView()
}

struct CategoryItemView: View {
    let title: String
    var body: some View {
        HStack{
            Text(title).padding()
        }
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .background(.white)
        .cornerRadius(10.0)
    }
}


struct RecentJob: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Middle UX/UI Designer").font(.title2)
                    Text("1 year experience Remote")
                }
                Spacer()
                VStack{
                    Image(systemName: "heart.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                        .cornerRadius(10.0)
                }
                .background(Color("main"))
                .cornerRadius(10.0)
            }.padding()
        }
        .background(.white)
        .cornerRadius(10.0)
        .padding(.horizontal)
    }
}
