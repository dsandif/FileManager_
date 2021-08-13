//
//  FileView.swift
//
//  Created by Darien Sandifer on 8/9/21.
//

import SwiftUI

struct FileView: View {
    var filename: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "doc.fill")
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

struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}
