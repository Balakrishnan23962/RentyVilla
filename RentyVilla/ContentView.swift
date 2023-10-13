//
//  ContentView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var : AppEnvironment
    @State var isShowing = false
    var body: some View {
        NavigationStack {
            ZStack {
                if isShowing {
                    SideMenuView(isShow: $isShowing)
                }
                Home(isShow: $isShowing)
                    .clipShape(RoundedRectangle(cornerRadius: isShowing ? 20 : 10))
                    .offset(x: isShowing ? 230 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.96 : 1.0)
                    .shadow(color: isShowing ? .black : .clear, radius: 12)
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            isShowing = false
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
//        .environmentObject(AppEnvironment())
}
