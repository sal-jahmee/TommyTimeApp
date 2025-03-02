//
//  ContentView.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 3/1/25.
//


import SwiftUI

struct ContentView: View {
    @State private var userSelection = 0
    @State private var currentDate = Date()
    @State private var showFormSheet = false
    @State private var showListViewSheet = false
    //@State private var showNotesViewSheet = false

   
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack{
//SEGMENTED CONTROL
                Picker("choice", selection: $userSelection){
                    Text("Work").tag(0)
                    Text("Personal").tag(1)//needs anchor?
                }
                
                .pickerStyle(.segmented)
                .padding(.horizontal)
//ADD TASK
                
                HStack {
                    Button(action: {
                        showFormSheet.toggle()}) {
                        Image(systemName: "calendar.badge.plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.leading)
                    }

                    ExtractedView()

                    Button(action: {
                        showListViewSheet.toggle()
                    }) {
                        Image(systemName: "list.bullet.clipboard")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.trailing)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical)
                        
         
                
                
                
//CALENDAR

                DatePicker("Date", selection: $currentDate)
                    .datePickerStyle(.graphical)
                    .padding()
                    .colorScheme(.dark) // forces white text on dark backgrounds
                
//HOMESCREEN TASKS
                VStack{
                    let customBlue = Color(UIColor(red: 0.4, green: 0.6, blue: 0.8, alpha: 1))//rgb custom color

                    Button("Meeting with John") {
                            //actual code (note pop up)
                        }
                        .frame(width: 350, height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(customBlue).opacity(0.6))
                        .foregroundColor(.white)
                    
                    Button("Dinner with Becky") {
                            //actual code (note pop up)
                        }
                        .frame(width: 350, height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(customBlue).opacity(0.6))
                        .foregroundColor(.white)

                    Button("Add Task") {
                            //actual code (note pop up)
                        }
                        .frame(width: 350, height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(customBlue).opacity(0.6))
                        .foregroundColor(.white)
                }
               
                    
            }
                    .sheet(isPresented: $showFormSheet) {
                        SheetView()
                    }
                    .sheet(isPresented: $showListViewSheet) {
                        SheetView2()
                    }

        }
        
    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    var body: some View {
        Spacer()
    }
}
