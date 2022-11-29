//
//  ContentView.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                //profile, live, photo, room
                VStack{
                    HStack{
                        Image("profile").resizable().frame(width: 60, height: 60)
                            .cornerRadius(30)
                        Text("What's on your mind?").font(.system(size: 17))
                    }.frame(height: 90)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .padding(.leading, 10).padding(.trailing, 10)
                    HStack{}.frame(maxWidth: .infinity).frame(height: 1).background(Color.gray.opacity(0.3))
                    HStack{
                        Spacer()
                        Button(action: {}, label: {
                            Image("ic_camera").foregroundColor(.black)
                            Text("Live").foregroundColor(.black)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "photo.fill").foregroundColor(.black)
                            Text("Photo").foregroundColor(.black)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image("ic_room").foregroundColor(.black)
                            Text("Room").foregroundColor(.black)
                        })
                        Spacer()
                    }
                }
                //create room
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10).background(Color.gray.opacity(0.3))
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            CreateRoom()
                            ItemRoom()
                            ItemRoom(isOnline: true)
                            ItemRoom(isOnline: true)
                            ItemRoom(isOnline: true)
                            ItemRoom(isOnline: true)
                            ItemRoom(isOnline: true)
                            ItemRoom(isOnline: true)
                        }
                    }.padding(.leading, 10)
                        .frame(height: 100)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                }
                //create story
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10).background(Color.gray.opacity(0.3))
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            CreateStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                            ItemStory()
                        }
                    }.padding(.leading, 10).padding(.trailing, 10)
                }
                //post items
                VStack{
                    HStack{}.frame(maxWidth: .infinity).frame(height: 10).background(Color.gray.opacity(0.3))
                    PostItem(img_url: "photo1")
                    PostItem(img_url: "photo2")
                    PostItem(img_url: "photo3")
                    updateProfile()
                }
            }
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue),
                trailing: HStack{
                    Button(action: {}, label: {
                        ZStack{
                            Circle().frame(width: 36, height: 36)
                                .foregroundColor(.gray.opacity(0.3))
                            Image(systemName: "magnifyingglass").foregroundColor(.black)
                        }
                    })
                    Button(action: {}, label: {
                        ZStack{
                            Circle().frame(width: 36, height: 36)
                                .foregroundColor(.gray.opacity(0.3))
                            Image(systemName: "bolt.circle.fill").foregroundColor(.black)
                        }
                    })
                })
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
