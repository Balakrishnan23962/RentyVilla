//
//  SideMenuView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            Color(.backgroundMenu)
                .ignoresSafeArea()
            VStack {
                SideCollection()
            }
        }
    }
}

#Preview {
    SideMenuView()
}
