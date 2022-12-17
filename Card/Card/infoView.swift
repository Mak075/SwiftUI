//
//  infoView.swift
//  Card
//
//  Created by Mak Mulabegovic on 11. 12. 2022..
//

import SwiftUI

struct infoView: View {
    
    let text: String
    let image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: image).foregroundColor(.green)
                    Text(text).font(.system(size: 15)).foregroundColor(Color(.black))//pretviru text u crno u dark mode
                }
            )
            .padding(.all)
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView(text: "Hello", image: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
