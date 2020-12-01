//
//  FancyImagetext.swift
//  SwiftUI1dec
//
//  Created by Bill Martensson on 2020-12-01.
//

import SwiftUI

struct FancyImagetext: View {
    
    @State var theimagename = ""
    @State var thetext = ""
    
    var body: some View {
        VStack {
            Image(theimagename)
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(thetext)
                .font(.title)
                
        }
        .padding(.top, 5.0)
    }
}

struct FancyImagetext_Previews: PreviewProvider {
    static var previews: some View {
        FancyImagetext(theimagename: "frog", thetext: "Hej")
            .previewLayout(.sizeThatFits)
    }
}
