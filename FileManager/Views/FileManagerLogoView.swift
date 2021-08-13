//
//  FileManagerLogoView.swift
//
//  Created by Darien Sandifer on 8/9/21.
//

import SwiftUI

struct FileManagerLogoView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("File")
                    .bold()

                Text("Manager_")
                    .fontWeight(.light)
            }
            Spacer()
        }
    }
}

struct FileManagerLogoView_Previews: PreviewProvider {
    static var previews: some View {
        FileManagerLogoView()
    }
}
