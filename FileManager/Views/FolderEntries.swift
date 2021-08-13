//
//  FolderEntries.swift
//
//  Created by Darien Sandifer on 8/12/21.
//

import SwiftUI

struct FolderEntriesView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var folders:[FileItem]
    
    var body: some View {
        VStack(alignment: .trailing){
            
            if(folders.count < 8){ //cutoff to simulate no files being found
                ErrorView()
                
            }else{
                ScrollView(.vertical, showsIndicators: false) {
                    Spacer(minLength: 50)
                    
                    VStack{
                        LazyVGrid(columns: columns, spacing: 20){
                            
                            ForEach(folders) { item in
                                
                                if(item.isFile){
                                    
                                    Button(action: {}, label: {
                                        NavigationLink(destination: FileManagerView(path: item.path)){
                                            FolderView(filename: item.name)
                                        }
                                    })
                                    
                                }else{
                                    
                                    Button(action: {}, label: {
                                        NavigationLink(destination: FileDetails(fileDetails: item)){
                                            FileView(filename: item.name)
                                        }
                                    })
                                    
                                }
                            }
                        }
                        .padding(.horizontal)
                        Spacer(minLength: 50)
                    }
                }
            }
        }
        .animation(.spring())
    }
}

struct FolderEntriesView_Previews: PreviewProvider {
    static var previews: some View {
        FolderEntriesView(folders: [FileItem(name: "Test File Name", path: "/TFN", size: 429813)])
    }
}
