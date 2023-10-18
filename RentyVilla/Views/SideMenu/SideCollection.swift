//
//  SideCollection.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideCollection: View {
    @State var selectedMenuItem: SideMenuModel? = .home

    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(SideMenuModel.allCases.indices, id: \.self) { index in
                    createMenuButton(index: index, geometry: geometry)
                    if shouldAddRectangle(index: index) {
                        Rectangle()
                            .frame(width: geometry.size.width / 2, height: 1)
                            .foregroundStyle(.white)
                            .padding(.trailing, geometry.size.width / 2)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private func createMenuButton(index: Int, geometry: GeometryProxy) -> some View {
        Button {
            selectedMenuItem = SideMenuModel.allCases[index]
//            DestinationView(index: index)
        } label: {
            SideCell(menuItems: SideMenuModel.allCases[index], isImageSelected: selectedMenuItem == SideMenuModel.allCases[index])
        }
        .background {
            if selectedMenuItem == SideMenuModel.allCases[index] {
                withAnimation(.smooth) {
                    RoundedShapeRect(cornerRadius: 20)
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 20)
                        .padding(.trailing, geometry.size.width / 2)
                        .foregroundStyle(.white)
                }
            }
        }

    }
    
    private func shouldAddRectangle(index: Int) -> Bool {
        return (index + 1) % 3 == 0 && index != SideMenuModel.allCases.count - 1
    }
}

#Preview {
    SideCollection()
}
/*
struct DestinationView: View {
    var index: Int = 0
    var body: some View {
        VStack {
            switch SideMenuModel.allCases[index] {
            case .home:
                Home()
            case .profile:
                ProfileView()
            case .nearby:
                Home()
            case .bookmark:
                Home()
            case .notificaiton:
                Home()
            case .message:
                Home()
            case .settings:
                Home()
            case .help:
                Home()
            case .logOut:
                Home()
            }
        }
    }
}
*/
