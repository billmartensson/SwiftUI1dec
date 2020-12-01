//
//  ContentView.swift
//  SwiftUI1dec
//
//  Created by Bill Martensson on 2020-12-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var thetexttoshow = "Tjena"
    @State var theenteredtext = ""
    
    var body: some View {
        NavigationView {
            VStack {
                if thetexttoshow == "abc" {
                    HStack {
                        Spacer()
                        Text("AA")
                        Spacer()
                        Text("BB")
                        Spacer()
                    }
                    .frame(height: 200.0)
                    .background(Color.red)
                }
                
                
                Text("Hej världen")
                    .font(.title)
                    .padding(.top, 30.0)
                    .background(Color.red)
                    .padding(.bottom, 10.0)
                    .background(Color.yellow)
                
                
                Text(thetexttoshow)
                    .font(.title)
                    .padding(.top, 30.0)
                    .background(Color.yellow)
                
                TextField("Skriv här", text: $theenteredtext)
                    .border(Color.black, width: 2)
                    .padding()
                
                Button(action: {
                    thetexttoshow = theenteredtext
                }) {
                    Text("Tryck här!!")
                }
                .padding()
                
                NavigationLink(
                    destination: SecondView(thebigtext: theenteredtext),
                    label: {
                        Text("Go!")
                    })
                
                Spacer()
                
                
                Text("nere")
            }
            
        
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
