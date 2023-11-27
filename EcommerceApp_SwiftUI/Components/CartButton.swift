//
//  CartButton.swift
//  EcommerceApp_SwiftUI
//
//  Created by PINAR KALKAN on 21.11.2023.
//

import SwiftUI

struct CartButton: View {
    var numberOfproducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            
            if numberOfproducts > 0 {
                Text("\(numberOfproducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfproducts: 1)
    }
}
