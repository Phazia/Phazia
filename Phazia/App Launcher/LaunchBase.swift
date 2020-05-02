//
//  LaunchBase.swift
//  Phazia
//
//  Created by Charan Sriram on 5/2/20.
//  Copyright © 2020 Charan Sriram. All rights reserved.
//

import SwiftUI

struct LaunchBase: View {
    
    //Updates with close
    @State var close: Bool = false
    var body: some View {
        ZStack {
            //Any view here
            
            Overlay(close: $close)
            
            //Handle close
        }
    }
}

struct LaunchBase_Previews: PreviewProvider {
    static var previews: some View {
        LaunchBase()
    }
}
