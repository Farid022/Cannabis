//
//  HomeView.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 31/05/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("splash_image02")
                .resizable()
                .scaledToFill()
            
            
            Text("Welcome to Home Screen")
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
                .padding(.top,100)

            //Reusable...
//            Image("cannabisGreenLogo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 188, height: 106)
//                .padding(.top, 40)
            
            
            Spacer()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
