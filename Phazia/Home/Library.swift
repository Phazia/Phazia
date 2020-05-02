//
//  Library.swift
//  Phazia
//
//  Created by Charan Sriram on 5/1/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct Library: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("BaseBlue"))
                .frame(height: 300)
                .cornerRadius(20)
            VStack {
                HStack {
                    Text("Recently Added")
                        .font(.custom("Cabin-SemiBold", size: 20))
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("Sort By")
                        .font(.custom("Cabin-SemiBold", size: 10))
                        .foregroundColor(Color.white)
                    Image(systemName: "arrow.down")
                        .font(.custom("Cabin-SemiBold", size: 10))
                        .foregroundColor(Color.white)
                }.padding(.horizontal, 40).padding(.vertical, 20)
                HStack {
                    App()
                    App()
                    App()
                    App()
                }
            }.offset(y: -70)
            
        }
        
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
