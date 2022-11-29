//
//  doubleImagePost.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 30/11/22.
//

import SwiftUI

struct doubleImagePost: View {
    var profile_img = "photo1"
    var post_img1 = "photo1"
    var post_img2 = "photo1"
    var profile_name = "bekhruzjon"
    var body: some View {
        VStack{
            //header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image(profile_img).resizable().frame(width: 50, height: 50).cornerRadius(25)
                    ZStack{
                        Circle().frame(width: 20, height: 20).foregroundColor(.white)
                        Circle().frame(width: 15, height: 15).foregroundColor(.green)
                    }
                }
                VStack(alignment: .leading, spacing: 5){
                    Text(profile_name).fontWeight(.bold)
                    HStack{
                        Text("18m")
                        Image(systemName: "globe.americas.fill")
                    }
                }
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }.padding()
            //description
            VStack{
                Text("!? IT sohada frilansermisiz?")
                HStack{
                    Text("Unda ohirigacha...")
                    Button(action: {}, label: {
                        Text("See More").foregroundColor(.gray.opacity(0.9))
                    })
                }.padding(.top, 5).padding(.bottom, 10).frame(alignment: .leading)
            }.frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20)
            //image
            HStack(spacing: 5){
                Image(post_img1).resizable().frame(width: UIScreen.main.bounds.size.width / 2).frame(height: 250)
                    .aspectRatio(contentMode: .fit)
                Image(post_img2).resizable().frame(width: UIScreen.main.bounds.size.width / 2).frame(height: 250)
                    .aspectRatio(contentMode: .fit)
            }
            
            // like, love, counts for comment and share
            HStack{
                Image(systemName: "hand.thumbsup.circle.fill").foregroundColor(.blue)
                Text("4")
                Spacer()
                Text("1 Shares")
            }.padding()
            HStack{}.frame(maxWidth: .infinity).frame(height: 1).background(Color.gray.opacity(0.3))
            //buttons
            HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "hand.thumbsup.fill").foregroundColor(.black)
                        Text("Like").foregroundColor(.black)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "message.badge.filled.fill").foregroundColor(.black)
                        Text("Comment").foregroundColor(.black)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "arrowshape.turn.up.left.fill").foregroundColor(.black)
                        Text("Share").foregroundColor(.black)
                    })
                    Spacer()
            }.frame(height: 40).padding(.top, 5)
            HStack{}.frame(maxWidth: .infinity).frame(height: 10 )
                .background(Color.gray.opacity(0.3))
        }
    }
}

struct doubleImagePost_Previews: PreviewProvider {
    static var previews: some View {
        doubleImagePost()
    }
}
