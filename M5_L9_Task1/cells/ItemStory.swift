//
//  ItemStory.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        ZStack{
            Image("story").resizable().frame(width: 150, height: 250)
            VStack(alignment: .leading){
                Image("profile")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.blue, lineWidth: 5))
                Spacer()
                Text("Hakmirzaev").fontWeight(.bold).foregroundColor(.white).font(.system(size: 17))
                Text("Bekhruz").fontWeight(.bold).foregroundColor(.white).font(.system(size: 17))
            }.padding()
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
