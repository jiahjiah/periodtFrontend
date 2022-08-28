//
//  LaunchView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Image("launchpage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Spacer()

                NavigationLink {
                    LoginView()
                        .navigationBarHidden(true)
                } label: {
                    Image("nextButton")
                }
                .padding(.bottom, 80)
                .padding(.trailing, 50)
            }
        }
        .statusBar(hidden: true)

    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
