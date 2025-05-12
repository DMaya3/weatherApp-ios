//
//  CardView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 12/5/25.
//

import SwiftUI

struct CardView: View {
    var icon: String
    var title: String
    var dataValue: String
    var description: String?
    
    init(icon: String, title: String, value: String, description: String? = nil) {
        self.icon = icon
        self.title = title
        self.dataValue = value
        self.description = description
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                Text(title)
            }
            .foregroundStyle(.white)
            .font(.system(size: 16))
            .opacity(0.6)
            .padding(.vertical, 8)
            
            Text(dataValue)
                .font(.title)
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(description ?? "No description available")
                .font(.caption)
                .foregroundStyle(.white)
                .padding()
        }
        .frame(width: 150, height: 150)
        .background(.cyan)
        .opacity(0.8)
        .clipShape(.rect(cornerRadius: 17, style: .circular))
        .padding()
    }
}
