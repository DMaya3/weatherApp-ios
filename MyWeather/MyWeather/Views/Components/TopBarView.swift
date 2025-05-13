//
//  TopBarView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import SwiftUI

struct TopBarView: View {
    @Binding var showSearchList: Bool
    
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Image(systemName: "paperplane.fill")
                Text("HOME")
                    .font(.callout)
            }
            .padding(.leading, 50)
            
            Spacer()
            Button {
                showSearchList = true
            } label: {
                Image(systemName: "magnifyingglass")
            }
            .padding()

        }
        .shadow(radius: 10)
        .padding(.top, 45)
    }
}
