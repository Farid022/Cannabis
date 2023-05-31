//
//  OnBoarding_View2.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 31/05/2023.
//

import SwiftUI

struct OnBoarding_View2: View {
    @State private var index: Int = 0
    
    var body: some View {
        ZStack {
            VStack {
                Image("image2")
                    .resizable()
                    .scaledToFill()
                    //.frame(maxWidth: .infinity, maxHeight: 199, alignment: .center)
                    .frame(width: 395, height: 580)
                    //.clipped()
                    .ignoresSafeArea(edges: .top)
                    .overlay {
                        VStack {
                            Image("cannabis_whiteLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 143, height: 72)
                                //.padding(.top, 50)
                            
                            Spacer()
                        }
                    }
                Spacer()
            }
            
            VStack(spacing: 0) {
                Spacer()
                //Image("cannabisGreenLogo")
                
                
                HStack {
                    ForEach(0..<5, id: \.self) { i in
                        Color("greenColor")
                            .opacity(i == index ? 1 : 0.5)
                            .frame(width: 40, height: 5)
                    }
                }
                
                VStack(spacing: 10) {
                    ///The title and description of the text
                    ForEach(0..<3) { i in
                        VStack(spacing: 7) {
                            if i == index {
                                Text(onBoardItems2[i].title)
                                //.font(.title.bold())
                                    .font(.system(size: 20).bold())
                                    .multilineTextAlignment(.center)
                                
                                Text(onBoardItems2[i].description)
                                    .font(.system(size: 15.8))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    
                }.padding(.top, 17)
                
                nextButton {
                    index += 1
                }
                .padding(.bottom, 30)
                .padding(.horizontal)
                .padding(.top,20)
                
                
            }
        }
    }
}

struct OnBoarding_View2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding_View2()
    }
}
