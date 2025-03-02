//
//  dismissView.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 10/10/24.
//

import SwiftUI

struct DismissView: View {
    @State private var showingDetail = false

    var body: some View {
        Button("Show Detail") {
            showingDetail = true
        }
        .sheet(isPresented: $showingDetail) {
          //  DismissingView1()
        }
    }
}
#Preview {
    DismissView()
}
