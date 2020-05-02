//
//  HomeView.swift
//  Phazia
//
//  Created by Charan Sriram on 5/1/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            Color("WhiteSmoke")
                .edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    HStack {
                        Text("Home")
                            .font(.custom("Cabin-Bold", size: 40))
                            .foregroundColor(Color("MidnightBlue"))
                        Spacer()
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.white)
                    }.padding(.horizontal, 25).padding(.top, 20)
                    WhatsNew()
                        .padding(.horizontal, 25)
                    AddPrototype()
                        .padding(.vertical, 60)
                    Library()
                        .padding(.horizontal, 25)
                    Spacer()
                }
            }
            VStack {
                Spacer()
                NavBar()
            }.edgesIgnoringSafeArea(.all)


        }
        
        
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
