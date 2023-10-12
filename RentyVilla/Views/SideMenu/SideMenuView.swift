//
//  SideMenuView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShow: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color(.backgroundMenu)
                .ignoresSafeArea()
            VStack(alignment: .trailing) {
                Button(action: {
                    withAnimation(.bouncy) {
                        isShow.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 32)
                        .foregroundStyle(.white)
                        .padding()
            })
                HStack {
                    SideCollection()
                }
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    SideMenuView(isShow: .constant(false))
}
