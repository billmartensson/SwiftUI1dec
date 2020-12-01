//
//  ThirdView.swift
//  SwiftUI1dec
//
//  Created by Bill Martensson on 2020-12-01.
//

import SwiftUI

struct ThirdView: View {
    
    @State var fruits = ["Banan", "Apelsin", "Kiwi", "Äpple"]
    
    
    var body: some View {
        VStack {
            Text("RUBRIK")
            HStack {
                Spacer()
                FancyImagetext(theimagename: "frog", thetext: "Banan")
                    .onTapGesture {
                        print("TAP!")
                    }
                    
                Spacer()
                FancyImagetext(theimagename: "bird", thetext: "Apelsin")
                Spacer()
                FancyImagetext(theimagename: "frog", thetext: "Kiwi")
                Spacer()
            }
            .background(Color.yellow)

            List(fruits, id: \.self) { currentfruit in
                
                VStack {
                    Text("Frukten är:")
                    Text(currentfruit)
                }
                
                
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {

        ThirdView()
            .previewDevice("iPhone 12 mini")

        ThirdView()
            .previewDevice("iPhone 12 Pro Max")

        ThirdView()
            .previewDevice("iPad Pro (12.9-inch) (4th generation)")
    }
}


