//
//  ContentView.swift
//  Grid
//
//  Created by Xie on 2022/7/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            // rows
            ForEach(0..<10) { index in
                // columns
                HStack {
                    ForEach(0..<5) {_ in
                        Image("manstock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
