//
//  ErrorView.swift
//
//  Created by Darien Sandifer on 8/12/21.
//

import SwiftUI

struct ErrorView: View {
    @Environment(\.presentationMode)
    var presentationMode

    var gradient: some View{
        LinearGradient(gradient: Gradient(colors: [Color.teal, Color.flatGreen]), startPoint: .leading, endPoint: .trailing)
    }
    
    var backButton: some View{
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack{
                Image(systemName: "arrow.backward")
                    .font(.title)

                Text("Back")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .frame(width: 150)
            .padding(.vertical, 5)
            .padding(.horizontal,0)
            .foregroundColor(.white.opacity(0.7))
            .background(gradient)
            .cornerRadius(40)
        }
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 25){
            Text("No Files found")
                .fontWeight(.light)
            
            backButton
            
        }
        .font(.largeTitle)
    }
}
struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
