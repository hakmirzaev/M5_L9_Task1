//
//  CreateStory.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct CreateStory: View {
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Image("createStory").resizable().frame(width: 150, height: 165)
                    .aspectRatio(contentMode: .fit)
                Rectangle().foregroundColor(.gray.opacity(0.2))
            }
            Button(action: {}, label: {
                VStack{
                    Spacer()
                    ZStack{
                        Circle().fill(.white).frame(width: 36, height: 36)
                        Image(systemName: "plus.circle.fill").resizable().frame(width: 28, height: 28)
                    }
                    Text("Create a \nstory").fontWeight(.bold).foregroundColor(.black)
                }.frame(height: 225)
            })
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct CreateStory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStory()
    }
}
