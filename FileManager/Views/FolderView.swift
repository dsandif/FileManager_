//
//  FolderView.swift
//
//  Created by Darien Sandifer on 8/8/21.
//

import SwiftUI

struct FolderView: View {
    var filename: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "folder.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 75)
                .foregroundColor(.teal)
            
            Text(filename)
                .fontWeight(.semibold)
                .font(.footnote)
                .padding([.bottom], 10)
                .frame(maxWidth: 95)
                .lineLimit(2)
        }
        .frame(maxWidth: 150)

    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView(filename: "test filename dude from mississippi")
    }
}
