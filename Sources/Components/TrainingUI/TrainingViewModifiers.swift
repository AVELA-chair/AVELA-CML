// Copyright 2026 Apple Inc. All rights reserved.

import SwiftUI

extension View {
    func trainingCardTitle() -> some View {
        self
            .font(.title2)
            .fontWeight(.medium)
            .padding(.top, .trainingCard.largePadding)
            .padding(.bottom, .trainingCard.smallPadding)
    }

    func trainingCardOverlay() -> some View {
        self
            .background(Color(red: 0.98, green: 0.97, blue: 0.93))
            .frame(width: .trainingCard.frame, height: .trainingCard.frame)
            .clipShape(RoundedRectangle(cornerRadius: .trainingCard.cornerRadius))
            .padding(.top, .trainingCard.largePadding)
    }

    func trainingCardPreviewStyle() -> some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white

                GroupBox {
                    self
                }.groupBoxStyle(.trainingBox)
            }
        }
    }

    func trainingCardSubtitle() -> some View {
        self
            .font(.body)
            .foregroundColor(Color(uiColor: .secondaryLabel))
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.horizontal, .trainingCard.largePadding)
    }

    func trainingCardButtonCaption() -> some View {
        self
            .font(.caption)
            .italic()
            .foregroundColor(Color(uiColor: .secondaryLabel))
            .frame(height: 40, alignment: .center)
            .padding(.bottom)
            .padding(.horizontal)
    }
}

extension Image {
    func trainingCardMainImage(height: CGFloat = 80) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: height)
    }
}
