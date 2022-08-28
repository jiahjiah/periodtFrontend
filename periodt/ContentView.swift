//
//  ContentView.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            //if no user logged in
            if viewModel.userSession == nil {
                LaunchView()
            } else {
                //have a logged in user
                TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house")
                                .padding()
                        }
                    
                    StatsView()
                        .tabItem {
                            Image(systemName: "calendar")
                                .padding()
                        }

                    ArticleView()
                        .tabItem {
                            Image(systemName: "newspaper")
                                .padding()
                        }

                    }

            }
            
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
