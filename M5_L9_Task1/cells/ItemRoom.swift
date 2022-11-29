//
//  ItemRoom.swift
//  M5_L9_Task1
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

struct ItemRoom: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("profile").resizable().frame(width: 60, height: 60)
            if isOnline{
                ZStack{
                    Circle().fill(.white).frame(width: 24, height: 24)
                    Circle().fill(.green).frame(width: 18, height: 18)
                }
            }
        }
    }
}

struct ItemRoom_Previews: PreviewProvider {
    static var previews: some View {
        ItemRoom()
    }
}
