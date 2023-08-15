//
//  ContentView.swift
//  POC_BlurBackground
//
//  Created by Martin Olguin on 14/08/23.
//

import SwiftUI
import OSLog

let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("backgroundImage")
            //Color.red
            ScrollView{
            }
            .background(Color.gray.opacity(0.1))
            .backgroundBlur(radius: 25, opaque: true)
            .clipShape(RoundedRectangle(cornerRadius: 44))
            .frame(width:400, height: 300)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.3))
                    .frame(width: 48, height: 5)
                    .frame(height:20)
                    .frame(maxHeight: .infinity, alignment: .top)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
