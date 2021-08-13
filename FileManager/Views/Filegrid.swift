//
//  Filegrid.swift
//
//  Created by Darien Sandifer on 8/8/21.
//

import SwiftUI


struct FileGrid: View {
    @State var loading = true
    
    var path = ""
    
    var files = [
        FileItem(name: "First Item", path: "/First Item", size: 0),
        FileItem(name: "Second Item", path: "/Second Item", size: 0),
        FileItem(name: "Third Item", path: "/Third Item", size: 0),
        FileItem(name: "Fourth Item", path: "/Fourth Item", size: 0),
        FileItem(name: "Fifth Item", path: "/Fifth Item", size: 0),
        FileItem(name: "Sixth Item", path: "/Sixth Item", size: 0),
        FileItem(name: "Seventh Item", path: "/Seventh Item", size: 0),
        FileItem(name: "Eighth Item", path: "/Eighth Item", size: 0),
        FileItem(name: "Ninth Item", path: "/Ninth Item", size: 0),
        FileItem(name: "Tenth Item", path: "/Tenth Item", size: 0),
        FileItem(name: "Eleventh Item", path: "/Eleventh Item", size: 0),
        FileItem(name: "New York City", path: "/New York City", size: 0),
        FileItem(name: "Los Angeles", path: "/Los Angeles", size: 0),
        FileItem(name: "Chicago", path: "/Chicago", size: 0),
        FileItem(name: "Houston", path: "/Houston", size: 0),
        FileItem(name: "Illinois", path: "/Illinois", size: 0),
        FileItem(name: "New York", path: "/New York", size: 0),
        FileItem(name: "Texas", path: "/Texas", size: 0),
    ].filter { FileItem in
        return Bool.random() // return a random amount of files
    }
    
    var body: some View {
        VStack {
            if(loading){
                LoadingView()
            }else{
                FolderEntriesView(folders: files) // pass in an empty array to show an error view
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            
            ToolbarItem(placement: .principal){
                FileManagerLogoView()
                    .font(.subheadline)
            }
            
            ToolbarItem(placement: .navigationBarTrailing){
                VStack{
                    Text(path)
                        .bold()
                    Text("\(files.count) files")
                }
            }
            
        }).onAppear(perform: {
            
            //simulate a loading screen
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
                self.loading = false
            }
        })
    }
}


struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
            
            Image(systemName: "externaldrive.connected.to.line.below")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
                .foregroundColor(.teal)
        }
    }
}

struct FileGrid_Previews: PreviewProvider {
    static var previews: some View {

        FileGrid()
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            .previewDisplayName("iPhone 8")
        FileGrid()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            .previewDisplayName("iPhone 11 Pro Max")
        FileGrid()
            .previewDevice(PreviewDevice(rawValue: "IPad Air 4th generation"))
            .previewDisplayName("IPad Air (4th generation)")

    }
}
