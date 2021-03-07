//
//  ContentView.swift
//  Alok
//
//  Created by Alok Kumar on 05/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var mobileNo = ""
    @State var password = ""
    
    var body: some View{
        NavigationView{
            VStack{
               Form{
                TextField("First Name",text:$firstName)
                        TextField("Last Name",text:$lastName)
                TextField("Mobile Number",text:$mobileNo)
                SecureField("Password",text:$password)
                    Button(action:{
                        print("Delete Button tapped !")
                    }){
                        HStack{
                        Image(systemName: "trash").font(.largeTitle).foregroundColor(.white)
                            Text("Delete").fontWeight(.semibold)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).padding(9)
                        }
                         
                    }
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(50)
                  
               }.navigationTitle("Register Yourself")
            }.background(Color.red)
        }
    }
}

 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    
}
}
