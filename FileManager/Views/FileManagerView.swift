//
//  FileManagerView.swift
//
//  Created by Darien Sandifer on 8/8/21.
//

import SwiftUI

struct FileManagerView: View {
    
    var path = ""
    var isRoot: Bool { path == "" }
    
    var backGroundGradient: some View{
        LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.4),Color.flatGreen.opacity(0.6),Color.blue.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    var body: some View {
        ZStack{
            backGroundGradient
                .edgesIgnoringSafeArea(.all)
    
            Color.white
                .opacity(0.3)
                .cornerRadius(50)
                .overlay(FileGrid(path: path))
                .padding()
        }
        .foregroundColor(.backgroundBlue.opacity(0.8))
    }
}


struct FileViewer_Previews: PreviewProvider {
    static var previews: some View {
        FileManagerView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        FileManagerView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
        FileManagerView()
            .previewDevice(PreviewDevice(rawValue: "IPad Air 4th generation"))
            .previewDisplayName("IPad Air (4th generation)")

    }
}
