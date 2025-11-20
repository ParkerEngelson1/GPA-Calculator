//
//  ContentView.swift
//  GPA Calculator
//
//  Created by Parker Engelson on 11/19/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var GPA = 0.0
    @State private var credits = 0
    @State private var totalCredits = 0
    @State private var courses : [String] = []
    @State private var newCourse : String = ""
    
    
    var body: some View {
        VStack{
            CustomText(text: "GPA Calculator")
           
            Button("Add Class"){ // button to add new line for class
               addClass() // calls func
            }
        }
    }
    func addClass(){ // function to add new line for the page
        CustomTextField(placeholder: "Enter Class Name", variable: $courses[0])
        
    }
}






#Preview {
    ContentView()
}




/// MAKE FUNC AddClass() into struct






struct CustomText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
        
    }
}
// struct CustomTable: View {
    // var body: some View {
        
    // }
//}

struct CustomTextField: View {
    let placeholder: String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: Binding<String>)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .frame(width : 200, height: 30)
            .font(.body)
            .padding()
        
    }
}

