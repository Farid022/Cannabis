//
//  nextButton.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 25/05/2023.
//

import SwiftUI

struct nextButton: View {
    
    var title: String? = "Next"
    
    var onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(title ?? "Next")
                .padding(.vertical)
                .font(.headline)
                .frame(maxWidth: .infinity, maxHeight: 50)
                //.frame(width: .infinity, height: 50)
                .foregroundColor(.white)
                .background(Color("greenColor"))
                .cornerRadius(20)
            
        }
        //.padding(.horizontal)

    }
}

struct nextButton_Previews: PreviewProvider {
    static var previews: some View {
        nextButton(title: "Next", onClick: {})
    }
}
