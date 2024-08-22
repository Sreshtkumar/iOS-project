//
//  Reservations.swift
//  Little Lemon App
//
//  Created by Sresht kumar Gampa on 6/19/23.
//

import SwiftUI


struct Reservations: View {
    @State var reservationDate = Date()
    @State var textfield: String = ""
    @State var number: String = ""
    @State var email: String = ""
    @State var dataArray: [String] = []
    
    
    var isFormValid: Bool {
        !textfield.isEmpty && !number.isEmpty && !email.isEmpty
    }
    
    
    var body: some View {
        
        VStack{
            //Image("Little-lemon-logo")
            HStack{
                Text("Party 1")
                DatePicker(selection: $reservationDate, in: Date()...,
                           displayedComponents: [.date, .hourAndMinute]){}
            }.padding(30)
            
            Form{
                //Image("Little-lemon-logo")
                TextField("Type your name here..", text: $textfield)
                TextField("Type your contact here", text: $number)
                TextField("Type your email here..", text: $email)
                Button(action: {
                                    validateForm()
                                }, label: {
                                    Text("Confirm Reservation")
                                })
                .frame(height: 40).padding(10)
                .background(Color.blue.opacity(0.2))
                .disabled(!isFormValid)
            }
    }
        
//        NavigationView{
//
//            VStack{
//                //Image("Little-lemon-logo")
//                HStack{
//                    Text("Party 1")
//                    DatePicker(
//                        selection: $reservationDate, in: Date()...,
//                        displayedComponents: [.date, .hourAndMinute]
//                    ){}
//                }.frame(width: 300, height: 30).padding().background(Color.yellow.opacity(0.1))
//                VStack{
//                    HStack{
//                        Text("NAME:")
//                        TextField("Type your name here..", text: $textfield)
//                    }.frame(width: 300, height: 30).padding().background(Color.green.opacity(0.1))
//                    HStack{
//                        Text("PHONE:")
//                        TextField("Type your phone number...", text: $number).keyboardType(.numbersAndPunctuation)
//                    }.frame(width: 300, height: 30).padding().background(Color.green.opacity(0.1))
//                    HStack{
//                        Text("EMAIL:")
//                        TextField("Type your phone number...", text: $email).keyboardType(.emailAddress)
//                    }.frame(width: 300, height: 30).padding().background(Color.green.opacity(0.1))
//                }.padding(20)
//                Button(action: {
//                    validateForm()
//                }, label: {
//                    Text("Save")
//                })
//            }
//        }
        
    }
    
    func validateForm()
    {
        //print("Reservation has been confirmed, thanks!!")
        dataArray.append(textfield)
    }
}

struct Reservations_Previews: PreviewProvider {
    static var previews: some View {
        Reservations()
    }
}
