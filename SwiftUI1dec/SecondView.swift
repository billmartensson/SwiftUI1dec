//
//  SecondView.swift
//  SwiftUI1dec
//
//  Created by Bill Martensson on 2020-12-01.
//

import SwiftUI

struct SecondView: View {
    
    @State var thebigtext = ""
    
    var body: some View {
        VStack {
            Text("Second view here!!")
            
            Text(thebigtext)
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .cornerRadius(50)
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(thebigtext: "Test texten")
    }
}
