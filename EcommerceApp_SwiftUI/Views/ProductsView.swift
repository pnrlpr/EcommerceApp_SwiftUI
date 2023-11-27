//
//  ProductsView.swift
//  EcommerceApp_SwiftUI
//
//  Created by PINAR KALKAN on 27.11.2023.
//

import SwiftUI

//Ana ekrandaki 4 nokta olan ikona çıkınca açılacak olan sayfa

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id){product in
                        ProductCardView(product: product)
                        
                    }
                }
                .padding()
            }
            
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}
