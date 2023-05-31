//
//  Splash_View.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 31/05/2023.
//

import SwiftUI

struct Splash_View: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            OnBoardings_View1()
        } else {
            VStack {
                VStack {
                    Image("splash_image01")
                        .resizable()
                        .ignoresSafeArea()
                        .overlay {
                            Image("cannabisGreenLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 217.38, height: 122)
                                .scaleEffect(size)
                                .opacity(opacity)
                        }
                    
                    
                    
                }
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct Splash_View_Previews: PreviewProvider {
    static var previews: some View {
        Splash_View()
    }
}
