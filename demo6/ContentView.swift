//
//  ContentView.swift
//  demo6
//
//  Created by yw c on 2020/01/03.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State var show = false
    var body: some View {
       
        Button(action: {
         self.show.toggle()
        }) {
            Text("Button")
            .background(Color.green)
            .cornerRadius(10)
            .padding()
                .foregroundColor(Color .white)
               
            
           
        }.sheet(isPresented: self.$show) {

            middle(show: self.$show)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct middle: View{
      @Binding var show : Bool
    var body: some View{
        Text("hello")
    }
}
