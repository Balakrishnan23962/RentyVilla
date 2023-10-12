//
//  SideCell.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideCell: View {
    var menuItems: SideMenuModel = .profile
    var isImageSelected: Bool = false
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: menuItems.image)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(isImageSelected ? .backgroundButton : .white)
            Text(menuItems.title)
                .foregroundStyle(isImageSelected ? .backgroundButton : .white)
                .font(.custom("Raleway-Medium", size: 20))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SideCell()
}
