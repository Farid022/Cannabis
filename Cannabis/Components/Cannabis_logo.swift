//
//  Cannabis_logo.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 26/05/2023.
//

import SwiftUI

struct Cannabis_logo: View {
    var body: some View {
        Image("green_cannabis_logo")
            .resizable()
            .scaledToFit()
            .frame(width: 143, height: 72)
    }
}

struct Cannabis_logo_Previews: PreviewProvider {
    static var previews: some View {
        Cannabis_logo()
    }
}
