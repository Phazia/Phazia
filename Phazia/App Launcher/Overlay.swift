//
//  Overlay.swift
//  Phazia
//
//  Created by Charan Sriram on 5/2/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

//Goes as an overlay over new views/projects added to the head
struct Overlay: View {
    
    
    //Start a binding var tied to close to determine if the entire view should be dismissed or not
    @State private var offset: CGFloat = -65
    @Binding var close: Bool
    var body: some View {
        VStack {
            HStack {
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 30)
                        .foregroundColor(Color("Salmon"))
                        .cornerRadius(20, corners: [.topRight, .bottomRight])
                    Image(systemName: "xmark")
                        .font(.custom("Cabin-SemiBold", size: 10))
                        .foregroundColor(Color.black)
                        .offset(x: 35)
                }.offset(x: offset)
                Spacer()
            }.gesture(
                DragGesture()
                    .onChanged{
                        if (self.offset <= -5) {
                            self.offset = $0.translation.width - 65
                        }
                        if (self.offset >= 0) {
                            self.offset = 0
                        }
                    }
                    .onEnded { _ in
                        if (self.offset < -10 || self.offset < -65) {
                            withAnimation() {
                                self.offset = -65
                            }
                        }
                        else if(self.offset >= -10) {
                            withAnimation() {
                                self.offset = 0
                            }
                            self.close = true
                        }
                    }
                        
                )
            Spacer()
        }.padding(.vertical, 50)
        
    }
}

