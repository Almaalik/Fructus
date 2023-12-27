//
//  StartButtonView.swift
//  Fructus
//
//  Created by Abdul Maalik on 02/09/23.
//

import SwiftUI

struct StartButtonView: View {
//MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
       Button(action: {
           isOnboarding = false
       }, label: {
           HStack {
               
               Text("START")
               
               Image(systemName: "arrow.right.circle")
                   .imageScale(.large)
           }//HSTACK
           .padding(.horizontal, 16)
           .padding(.vertical, 10)
           .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
           )
       }) //Button
       .accentColor(.white)
    }
}

//MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
