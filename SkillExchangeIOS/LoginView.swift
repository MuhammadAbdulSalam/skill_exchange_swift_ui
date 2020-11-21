//
//  LoginView.swift
//  SkillExchangeIOS
//
//  Created by salam on 20/11/2020.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        ZStack(){
            
            Color.blue.edgesIgnoringSafeArea(.all)
           
            ScrollView{
                
                VStack {
                
                    Image("logo_main")
                        .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(width: 200, height: 300)
                
                    VStack(alignment: .hCenterred, spacing: 20) {
                        
                            HStack{
                                Spacer()
                                Image(systemName: "person.circle")
                                    .foregroundColor(Color.gray)
                                Spacer()
                                TextField("Enter username...", text: $username)
                                }
                                .padding(.vertical, 10)
                                .background(RoundedCorners(color: .white, tl: 10, tr: 10, bl: 10, br: 10))

                            
                            HStack{
                                Spacer()
                                Image(systemName: "lock.shield")
                                    .foregroundColor(Color.gray)
                                Spacer()
                                TextField("Enter password...", text: $password)
                                }
                                .padding(.vertical, 10)
                                .background(RoundedCorners(color: .white, tl: 10, tr: 10, bl: 10, br: 10))
                        
                        
                            Button(action: {
                                // What to perform
                            }) {
                               Text("Login")
                                .foregroundColor(.white)

                            } .alignmentGuide(.hCenterred, computeValue: { $0.width + 10 })

                            
                            
                    }.padding(.horizontal, 10)
                }
            }
        }
    }
}
   
    
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

