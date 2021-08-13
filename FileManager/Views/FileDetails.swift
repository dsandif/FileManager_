//
//  FileDetails.swift
//
//  Created by Darien Sandifer on 8/12/21.
//

import SwiftUI

struct FileDetails: View {
    
    var fileDetails: FileItem
    
    var gradient: some View{
        LinearGradient(gradient: Gradient(colors: [Color.teal, Color.flatGreen]), startPoint: .leading, endPoint: .trailing)
    }
    
    var frostedArea: some View{
        VStack(alignment: .leading, spacing: 20){
            Text("Name: \(fileDetails.name)")
            Divider()
            
            Text("Path: \(fileDetails.path)")
            Divider()
            
            Text("Size: \(String(fileDetails.size)) bytes")
            Divider()
            
            Spacer()
        }
        .font(.headline)
        .padding([.top, .leading], 50)
        .font(.title)
        
    }
    
    var body: some View {
        ZStack(alignment: .topLeading){
            gradient
                .edgesIgnoringSafeArea(.all)
            
            Color.white
                .opacity(0.3)
                .cornerRadius(50)
                .overlay(frostedArea)
                .padding()
        }
        .foregroundColor(.backgroundBlue.opacity(0.8))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .principal){
                Text("File Details").foregroundColor(.backgroundBlue.opacity(0.8))
            }
        })
        
    }
}

struct FileDetails_Previews: PreviewProvider {
    static var previews: some View {
        FileDetails(fileDetails: FileItem(name: "Test File", path: "/test path", size: 3824))
    }
}
