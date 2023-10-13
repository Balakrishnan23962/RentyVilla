//
//  Home.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import Foundation
import SwiftUI

struct Home: View {
    @Binding var isShow: Bool
    @State var isClicked = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Location")
                                .font(.custom("Raleway-Regular", size: 15))
                                .foregroundStyle(.gray)
                            HStack(spacing: 14) {
                                Text("Jakarta")
                                    .font(.custom("Raleway-Medium", size: 25))
                                Image(systemName: isClicked ? "chevron.up" : "chevron.down")
                                    .onTapGesture {
                                        withAnimation(.bouncy) {
                                            isClicked.toggle()
                                        }
                                    }
                            }
                        }
                        Spacer()
                        Button(action: {
                            withAnimation(.bouncy) {
                                isShow.toggle()
                            }
                        }, label: {
                            Image(systemName: "bell.badge")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .symbolRenderingMode(.multicolor)
                        })
                    }
                    .padding()
                    CategoryView()
                    NearView()
                    BestForYouView()
                    Spacer()
                }
            }
        }
        .scrollIndicators(.hidden)
        .background {
            Color.white
        }
    }
}

#Preview {
    Home(isShow: .constant(false))
}

