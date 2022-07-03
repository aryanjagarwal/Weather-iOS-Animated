//
//  TapBar.swift
//  Weather-iOS-Animated
//
//  Created by Aryan Jagarwal on 03/07/22.
//

import SwiftUI

struct TapBar: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            // MARK: Tab Items
            HStack {
                // MARK: Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                // MARK: Navigation Button
                NavigationLink{
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar(action: {})
            .preferredColorScheme(.dark)
    }
}
