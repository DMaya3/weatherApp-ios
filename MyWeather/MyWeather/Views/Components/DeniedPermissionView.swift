//
//  DeniedPermissionView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import SwiftUI

struct DeniedPermissionView: View {
    var body: some View {
        VStack {
            Image(systemName: "xmark.circle.fill")
                .font(.title)
                .foregroundStyle(.red)
            Text("Permission denied")
                .font(.title3)
            
            Text("Go Settings > Privacy & Security > Location Services > Allow location permission")
                .font(.headline)
                .padding()
        }
    }
}
