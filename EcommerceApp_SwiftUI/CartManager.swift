//
//  CardManager.swift
//  EcommerceApp_SwiftUI
//
//  Created by PINAR KALKAN on 21.11.2023.
//

import Foundation

class CartManager: ObservableObject {
    //private(set), özelliğin sadece sınıf içinden değiştirilebileceğini belirtmek için kullanılır. @Published olduğu için sınıf dışından erişebilirsin ancak değiştiremezsin.
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart (product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromcart (product: Product) {
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
    
}
