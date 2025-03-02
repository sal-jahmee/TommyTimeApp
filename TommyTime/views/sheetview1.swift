//
//  SwiftUIView.swift
//  Champions
//
//  Created by Shakira Al-Jahmee on 10/8/24.
//



import SwiftUI




struct SheetView: View {
    @State private var isShowingSheet = false
    @State private var task: String = ""
    @State private var event: String = ""
    @State private var description: String = ""
    @State private var selectedDate: Date = Date()
    @State private var selectedTime: Date = Date()
    @State private var dueDate: Date = Date()
    @State private var location: String = ""
    @State private var attachmentlink: String = ""
    @State private var notes: String = ""
    @State private var isreminder = false
    @State private var isDiscard = false
    @State var showingAlert : Bool = false
    
//put variables in model
    @State private var userSelectionTwo = 0

var body: some View {
    VStack {
        Spacer()
        
        // Plus button to open the popup sheet
       // Button(action: {
       //     self.isShowingSheet = true
       // }) {
            
      //  }
      //  .padding()
     //   .sheet(isPresented: $isShowingSheet) {
        
            NavigationView {
                VStack {
                    
                    Picker("choice", selection: $userSelectionTwo){
                        Text("Work").tag(0)
                        Text("Personal").tag(1)//needs anchor?
                    }
                    .padding()
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    
               
                    
                    Form {
                        Section(header: Text("Task Details")) {
                           
                            TextField("Task", text: $task)
                            TextField("Event", text: $event)
                            TextField("Description", text: $description)
                            
                            
                            DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                            
                            DatePicker("Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                            
                            TextField("Location", text: $location)
                            TextField("Attachment Link", text: $attachmentlink)
                            TextEditor (text: $notes)
                            
                            let customColor = Color(UIColor(red: 0.4, green: 0.6, blue: 0.8, alpha: 1))
                            Toggle("Reminder", isOn: $showingAlert)
                                .tint (customColor)
                       
                           
                        }
                       
                        // Save the input data here
                      
                     
                        Button(action: {
                            
                            print("Task: \(task)")
                            print("Event: \(event)")
                            print("Description: \(description)")
                            print("Selected Date: \(selectedDate)")
                            print("Selected Time: \(selectedTime)")
                            print("Due Date: \(dueDate)")
                            print("Location: \(location)")
                            print("AttachmenLinkt: \(attachmentlink)")
                            
                            self.isShowingSheet = false
                        }) {
                            let customColor = Color(UIColor(red: 0.4, green: 0.6, blue: 0.8, alpha: 1))
                            Text("Save")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background (customColor)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        
                        //centered button
                        HStack {
                            Spacer()
                            Button("Discard") {
                                isDiscard = true
                            }
                            .padding(10)
                            Spacer()
                        }
                        
                       // Button("Discard") {isDiscard = true }
                       // .padding(10)
                        
                    }
                    .padding()
                }
                .alert("Important message", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) {
                        
                        isShowingSheet = true
                    }
                }
// .navigationTitle("Add Task")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
  // .frame(height: 300) // Adjust this height as needed
                  //.edgesIgnoringSafeArea(.horizontal)
                 // .presentationDetents([.height(420)])
}
//}

struct SheetView_Previews: PreviewProvider {
static var previews: some View {
SheetView()
}
}
