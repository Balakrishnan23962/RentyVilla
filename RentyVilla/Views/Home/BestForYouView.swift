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
        VStack {
            HStack {
                Text("Best for you")
                    .font(.ralewayMedium(size: 16))
                Spacer()
                Text("See more")
                    .font(.ralewayRegular(size: 12))
                    .foregroundStyle(.gray)
            }
            .padding()
            VStack {
                ForEach(viewModel.bestCategories, id: \.id) { category in
                    BestForCell(category: category)
                }
            }
        }
    }
}

#Preview {
    BestForYouView()
}
