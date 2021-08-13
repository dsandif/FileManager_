//
//  WelcomeView.swift
//
//  Created by Darien Sandifer on 8/8/21.
//

import SwiftUI

struct WelcomeView: View {
    var backGroundGradient: some View{
        LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.4),Color.flatGreen.opacity(0.6),Color.blue.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    var logo: some View{
        Circle()
            .opacity(0)
            .background(Color.white.opacity(0.6).clipShape(Circle()))
            .frame(width: 200, height: 200)
            .overlay(
                Image(systemName: "folder.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.teal)
            )
    }
    
    var frostedArea: some View{
        HStack{
            VStack(alignment: .leading, spacing: 80){
                HStack{
                    Spacer()
                    logo
                    Spacer()
                }
                HStack{
                    Spacer()
                    description
                    Spacer()
                }
            }
        }
    }
    
    var unlockBtn: some View{
        Button(action: {
            
        }) {
            NavigationLink(destination: FileManagerView()){
                HStack {
                    Image(systemName: "lock.shield")
                        .font(.title)
                    
                    Text("Unlock")
                        .fontWeight(.bold)
                        .font(.title3)
                }
                .frame(minWidth: 0, maxWidth: 200)
                .padding()
                .foregroundColor(.white.opacity(0.7))
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.teal, Color.flatGreen]), startPoint: .leading, endPoint: .trailing))
            }
        }
        .cornerRadius(40)
        .padding([.top],25)
    }
    
    var description: some View{
        VStack(alignment: .leading){
            Group{
                Text("File")
                    .bold()
                
                Text("Manager_")
                    .fontWeight(.light)
                
            }
            .foregroundColor(.backgroundBlue.opacity(0.8))
            .font(.system(size: 50))
            
            Text("It's a simple option that doesn't have a lot of flair. Let's manage your files.")
                .font(.headline)
                .foregroundColor(.darkGrey.opacity(0.5))
                .frame(maxWidth: 300, alignment: .leading)
                .padding([.vertical],25)
         
            unlockBtn
        }
        .multilineTextAlignment(.leading)
    }
    
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                backGroundGradient
                
                HStack(alignment: .center){
                    Spacer()
                    VStack{
                        
                        Spacer()
                        Color.white
                            .opacity(0.15)
                            .cornerRadius(50)
                            .overlay(frostedArea)
                            .frame(maxWidth: 500, maxHeight: 800, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            WelcomeView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
            WelcomeView()
                .previewDevice(PreviewDevice(rawValue: "IPad Air 4th generation"))
                .previewDisplayName("IPad Air (4th generation)")
        }
    }
}
