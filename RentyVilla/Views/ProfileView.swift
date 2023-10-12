//
//  ProfileView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 12/10/23.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome")
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        withAnimation(.bouncy) {
                            
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundStyle(.black)
                    })
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
