//
//  SideCell.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideCell: View {
    var menuItems: SideMenuModel = .home
    @State var isImageSelected = true
    var body: some View {
        HStack(spacing: 20) {
            Image(isImageSelected ? menuItems.imageSelected : menuItems.imageNotSelected)
                .resizable()
                .frame(width: 20, height: 20)
            Text(menuItems.title)
                .foregroundStyle(isImageSelected ? .white : .backgroundButton)
                .font(.custom("Raleway-Medium", size: 20))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SideCell()
}
