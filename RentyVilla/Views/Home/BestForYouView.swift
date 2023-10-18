//
//  BestForYouView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI

struct BestForYouView: View {
    @StateObject var viewModel = BestCategoryViewModel()
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Best for you")
                    .font(.ralewayMedium(size: 16))
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("See more")
                        .font(.ralewayRegular(size: 12))
                        .foregroundStyle(.gray)
                })
            }
            .padding()
            ForEach(viewModel.bestCategories, id: \.id) { category in
                BestForCell(category: category)
            }
            .padding(.leading)
            .padding([.bottom], 10)
        }
    }
}

#Preview {
    BestForYouView()
}
