//
//  PersonDetails.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 19/10/23.
//

import SwiftUI

struct PersonDetails: View {
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 15) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 22, height: 22)
                    .padding()
                    .foregroundStyle(.red)
                    .background {
                        Color.gray.opacity(0.5)
                    }
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10) {
                    Text("Garry Allen")
                        .font(.ralewayMedium(size: 16))
                    Text("Owner")
                        .foregroundStyle(.gray)
                        .font(.ralewayRegular(size: 14))
                }
                Spacer()
                HStack(spacing : 20) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.all, 10)
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 10).foregroundStyle(.backgroundButton)
                            }
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.all, 10)
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 10).foregroundStyle(.backgroundButton)
                            }
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    PersonDetails()
}
