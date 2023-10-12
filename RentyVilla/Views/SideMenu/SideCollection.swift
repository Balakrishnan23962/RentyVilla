//
//  SideCollection.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideCollection: View {
    @State var isselected = true
    var body: some View {
        VStack {
            ForEach(SideMenuModel.allCases, id: \.id) { sideMenu in
                SideCell(menuItems: sideMenu, isImageSelected: isselected)
            }
        }
    }
}

#Preview {
    SideCollection()
}
