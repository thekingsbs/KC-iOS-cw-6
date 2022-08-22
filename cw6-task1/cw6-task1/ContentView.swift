//
//  ContentView.swift
//  cw6-task1
//
//  Created by Saleh Al Sedrah on 22/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weight  = ""
    @State var BMI = ""
    
    @State var status = ""
    
    func calculateBMI(_ height:String, weight: String) {
        
        var BMICalc = 0.0
        
        let heightDouble = Double(height) ?? 0.0
        
        let weightDouble = Double(weight) ?? 0.0
        
        BMICalc = weightDouble / (heightDouble * heightDouble)
        
        BMI = String(format: "%.1f", BMICalc)
        
        if BMICalc < 20 {
            status = "You are underweight"
            
            
        } else if BMICalc > 20 && BMICalc <= 25 {
            status = "You are at a normal weight"
            
        } else {
            status = "You are overweight"
            
            
        }
        
        
    }
    
    
    var body: some View {
        
        
        ZStack {
                    
            
            
            VStack {
                
                Text("BMI Calculator")
                    .padding()
                    .font(.system(size: 40, weight: .semibold, design: .monospaced))
                
                Spacer()
                
                
                Image("bmi")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                
                
                
                
                
                
                Spacer()
                
                
                
                TextField("Please enter your height (in meters)", text: $height)
                    .padding()
                
                TextField("Please enter your weight (in kilograms)", text: $weight)
                    .padding()
                
                
                
                Text("Your BMI is: \(BMI)")
                    .padding()
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                Text(status)
                    .padding()
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                
                
                
                
                
                Spacer()
                
                Group { Button(action: {
                    
                    calculateBMI(height, weight: weight)
                    
                }, label: {
                    Text("Calculate BMI")
                        .padding()
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 80, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .opacity(0.9)
                    
                })
                
                
                Spacer()
                
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
