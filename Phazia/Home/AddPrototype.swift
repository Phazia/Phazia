//
//  AddPrototype.swift
//  Phazia
//
//  Created by Charan Sriram on 5/1/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct AddPrototype: View {
    
    @State private var code: String = ""
    
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .frame(width: 70, height: 70)
                    .foregroundColor(Color.white)
                Image(systemName: "camera")
                    .font(.custom("Cabin-Regular", size: 30))
                .foregroundColor(Color("BorderDark"))
            }
            
            
            Divider()
                .frame(height: 90)
                .padding(.horizontal, 23)
            //line
            VStack(alignment: .leading) {
                Text("Code")
                    .font(.custom("Cabin-SemiBold", size: 15))
                    .offset(y: 5)
                TextField("Code", text: $code)
                    .font(.custom("Cabin-Regular", size: 10))
                    .padding(.leading, 5)
                    .frame(width: 91, height: 22)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("BorderDark"), lineWidth: 1))
                

                

                Button(action: {
                    
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width:91, height: 22)
                            .foregroundColor(Color("SkyBlue"))
                            .cornerRadius(20)
                        Text("Add")
                            .foregroundColor(Color.white)
                            .font(.custom("Cabin-SemiBold", size:10))
                        
                    }
                    
                }
            }
        }
    }
}

struct AddPrototype_Previews: PreviewProvider {
    static var previews: some View {
        AddPrototype()
    }
}
