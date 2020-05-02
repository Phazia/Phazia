//
//  WhatsNew.swift
//  Phazia
//
//  Created by Charan Sriram on 5/1/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct WhatsNew: View {
    var title: String = "What's New"
    var description: String = "One-click hosting set up!"
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 90)
                .foregroundColor(Color.white)
                .cornerRadius(20)
            VStack {
                HStack {
                    Text(title)
                        .foregroundColor(Color.black)
                        .font(.custom("Cabin-SemiBold", size: 20))
                        .padding(.top, 20)
                    Spacer()
                }.padding(.horizontal)
                HStack {
                    Text(description)
                        .foregroundColor(Color.black)
                        .font(.custom("Cabin-Regular", size: 15))
                    Spacer()
                }.padding(.horizontal).padding(.vertical, 15).padding(.bottom)
            }
            Button(action:{
                
            }) {
                HStack{
                    Spacer()
                    VStack {
                        Spacer()
                        ZStack{
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color("Salmon"))
                            Image(systemName: "xmark")
                                .font(.custom("Cabin-SemiBold", size: 7))
                                .foregroundColor(Color.black)
                        }
                    }
                }.padding(10).frame(height: 90)
                
                

            }
            
        }
        
    }
}

struct WhatsNew_Previews: PreviewProvider {
    static var previews: some View {
        WhatsNew()
    }
}
