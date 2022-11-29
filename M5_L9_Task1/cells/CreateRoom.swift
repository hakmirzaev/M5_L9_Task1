//
//  CreateRoom.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct CreateRoom: View {
    var body: some View {
        ZStack{
            Rectangle().frame(width: 110, height: 58).cornerRadius(30).foregroundColor(.white).overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue.opacity(0.3), lineWidth: 2))
            Button(action: {}, label: {
                Image("ic_room").resizable().frame(width: 35, height: 30)
                Text("Create \nRoom").font(.system(size: 15))
            })
        }
    }
}

struct CreateRoom_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoom()
    }
}
