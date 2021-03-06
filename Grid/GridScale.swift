//
//  GridScale.swiftπ¦πΌπ³π±π±π°π«π―π¬πΌπ¬π³π¬πͺπ¨π²π²πΏ
//  Grid
//
//  Created by Xie on 2022/7/17.
//

import SwiftUI

struct GridScale: View {
    
    let nations = ["π¦πΌ", "π³π±", "π±π°", "π«π―", "π¬πΌ", "π¬π³", "π¬πͺ", "π¨π²", "π²πΏ"]
    @State private var slideValue: CGFloat = 1
    
    var body: some View {
        
        NavigationView {
            VStack {
                Slider(value: $slideValue, in: 1...8, step: 1)
                Text(String(format: "%.0f", self.slideValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
    
                List(nations.chunks(size: Int(slideValue)), id: \.self) { chunk in
                    HStack {
                        ForEach(chunk, id: \.self) { nation in
                            
                            Text(nation)
                                
                                .font(.system(size: CGFloat(300/self.slideValue)))
                        
                            
                        }
                    }
                    
                    
                }
                .listStyle(.grouped)
            }.navigationBarTitle("Nations")
        }
        
    }
}

struct GridScale_Previews: PreviewProvider {
    static var previews: some View {
        GridScale()
    }
}
