//
//  FileManagerApp.swift
//  FileManager
//
//  Created by Darien Sandifer on 8/12/21.
//

import SwiftUI

@main
struct FileManagerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                WelcomeView()
                    .navigationBarHidden(true)
                    .onAppear(perform: {
                        Theme.navigationBarColors(background: nil)
                    })
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
