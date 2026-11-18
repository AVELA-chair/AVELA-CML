// Copyright 2026 Apple Inc. All rights reserved.

import SwiftUI

struct NoProjectsView: View {
    let createProjectAction: () -> Void

    var body: some View {
        ZStack(alignment: .top) {
            Color.pageBackground
                .ignoresSafeArea()

            VStack {
                HStack(alignment: .bottom, spacing: 20) {
                    Image(systemName: "photo")
                        .welcomeImageIcon()
                        .foregroundStyle(Color.image)

                    Image(systemName: "camera.fill")
                        .welcomeImageIcon()
                        .foregroundStyle(Color.camera)
                        .padding(.bottom, 35)

                    Image(systemName: "list.bullet.rectangle.fill")
                        .welcomeImageIcon()
                        .foregroundStyle(Color.list)
                }

                Text(.startBuildingYourFirstImageClassifier)
                    .font(.title)
                    .padding()

                Button {
                    createProjectAction()
                } label: {
                    Label(.createProject, systemImage: "plus")
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .padding(.top, 32)
            .padding(.bottom, 24)
            .frame(maxWidth: .infinity)
            .background(Color.cream)
            .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
            .padding(.top, 144)
            .padding(.horizontal, 24)
        }
    }
}

extension Image {
    func welcomeImageIcon() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 45)
    }
}

// MARK: - Previews

#if DEBUG

#Preview {
    NoProjectsView {
        print("Create project action")
    }
}

#endif
