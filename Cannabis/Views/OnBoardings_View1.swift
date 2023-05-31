//
//  OnBoardings.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 25/05/2023.
//

import SwiftUI

struct OnBoardings_View1: View {
    @State private var index: Int = 0
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            ///The goThrough picture
            Image("image03")
                .resizable()
                .scaledToFill()
                //.scaledToFit()
                .padding(.top, -9)
                .frame(width: .infinity, height: 485)
                .padding(.bottom)
                .padding(.bottom,200)
                .overlay {
                    VStack {
                        Image("cannabis_whiteLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 143, height: 72)
                            //.padding(.top, 20)
                        
                        Spacer()
                    }
                }
            
            
            
            VStack {
                ///The Cannabis logo
                VStack {
                    Cannabis_logo()
                    Spacer()
                }
                Spacer()
                
                VStack(spacing: 16) {
                    ///The title and description of the text
                    ForEach(0..<3) { i in
                        VStack(spacing: 10) {
                            if i == index {
                                Text(onBoardItems[i].title)
                                //.font(.title.bold())
                                    .font(.system(size: 20).bold())
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                
                                Text(onBoardItems[i].description)
                                    .font(.system(size: 15.8))
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                    
                    //The tabs and next button
                    VStack(spacing: 23) {
                        HStack {
                            ForEach(0..<3, id: \.self) { i in
                                Color("greenColor")
                                    .opacity(i == index ? 1 : 0.5)
                                    .frame(width: 40, height: 5)
                                    .animation(.easeInOut, value: i == index)
                            }
                        }

                        ///The next button
                        nextButton(title: "Next") {
                            index += 1
                            
                            if index == 2 {
                                HomeView()
                            }
                        }
                        .padding(.bottom, 30)
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct OnBoardings_View1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardings_View1()
    }
}












//                TabView(selection: $index) {
//                    ForEach(1..<3, id: \.self) { index in
//                        Image("goThrough_\(index)")
//                            .resizable()
//                            .scaledToFill()
//                            .padding(.top, -15)
//                            .frame(width: .infinity, height: 487)
//                            //.frame(maxWidth: .infinity, maxHeight: 487)
//                            //.aspectRatio(1, contentMode: .fill)
//                    }
//                }
//                .tabViewStyle(.page(indexDisplayMode: .never))
//                .background(.red)


/*
 VStack {
     
     
     VStack(spacing: 16) {
         
         ForEach(0..<3) { i in
             VStack(spacing: 10) {
                 
                 if i == index {
                     Text(onBoardItems[i].title)
                         //.font(.title.bold())
                         .font(.system(size: 20).bold())
                         .foregroundColor(.white)
                         .multilineTextAlignment(.center)
                     
                     Text(onBoardItems[i].description)
                     .font(.system(size: 15.8))
                     .foregroundColor(.white)
                     .multilineTextAlignment(.center)
                 }
             }
         }
         
         
         
         VStack(spacing: 23) {
             HStack {
                 ForEach(0..<3, id: \.self) { i in
                     Color("greenColor")
                         .opacity(i == index ? 1 : 0.5)
                         .frame(width: 40, height: 5)
                         .animation(.easeInOut, value: i == index)
                 }
             }
             
             //Spacer(minLength: 23)
             
             nextButton {
                 index += 1
             }
             //.padding(.bottom, 38)
        }

     }
     
 }

 */
