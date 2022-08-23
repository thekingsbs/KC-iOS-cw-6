//
//  ContentView.swift
//  cw6-task2
//
//  Created by Saleh Al Sedrah on 23/08/2022.
//

import SwiftUI

struct ContentView: View {

    @State var counter: [Int] = [0, 0, 0]
      var body: some View {
          VStack{
              HStack{
                  Text("أستغفر الله العظيم").font(.title)
                  Spacer()
                MyButton(myCounter: $counter)
              }.padding()
              HStack{
                  Spacer()
                  Text("الحمدلله").font(.title)
                  Spacer()
                  MyButton(myCounter: $counter)
              }.padding()
              HStack{
                  Text("سبحان الله وبحمده").font(.title)
                  Spacer()
                  MyButton(myCounter: $counter)
              }.padding()
          }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyButton: View {
    @Binding var myCounter: [Int]
    
    var body: some View {
        Text("\(myCounter[0])")
            .font(.largeTitle)
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(.white)
            .background(Color.green)
            .clipShape(Circle())
            .padding()
            .onTapGesture {
                myCounter[0] = myCounter[0] + 1
            }
    }
}
