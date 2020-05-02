//
//  App.swift
//  Phazia
//
//  Created by Charan Sriram on 5/1/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct App: View {
    
    var appName: String = "Phazia"
    
    var body: some View {
        Button(action: {
            // Open app
        }) {
            VStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.gray)
                Text(appName)
                    .font(.custom("Cabin-Regular", size: 10))
                    .foregroundColor(Color.white)
            }.padding(.horizontal, 5)
        }
        
        
    }
}

struct App_Previews: PreviewProvider {
    static var previews: some View {
        App()
    }
}
