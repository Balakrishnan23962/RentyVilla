//
//  ContentView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appEnv: AppEnvironment
    var body: some View {
        NavigationStack {
            ZStack {
                if appEnv.isShowing {
                    SideMenuView(isShow: $appEnv.isShowing)
                }
                Home()
                    .clipShape(RoundedRectangle(cornerRadius: appEnv.isShowing ? 20 : 10))
                    .offset(x: appEnv.isShowing ? 230 : 0, y: appEnv.isShowing ? 44 : 0)
                    .scaleEffect(appEnv.isShowing ? 0.96 : 1.0)
                    .shadow(color: appEnv.isShowing ? .black : .clear, radius: 12)
                    .onTapGesture {
                        withAnimation(.bouncy) {
                            appEnv.isShowing = false
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button(action: {
                                withAnimation(.bouncy) {
                                    appEnv.isShowing = true
                                }
                            }, label: {
                                Image(systemName: "list.bullet")
                                    .foregroundStyle(.black)
                            })
                        }
                    }
                    .navigationTitle("Home")
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppEnvironment())
}
