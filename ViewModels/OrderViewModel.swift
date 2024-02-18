//
//  OrderViewModel.swift
//  Perfection Metals Quick Measure & Design
//
//  Created by Jeff Sager on 2/15/24.
//

import Foundation
import Combine

class OrderViewModel: ObservableObject {
    @Published var orders: [Order] = []
    
    func placeOrder(_ newOrder: Order) {
        // Implement your order placement logic here
        // This could involve making a network request to your backend service
        // For now, let's simulate adding an order with a delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.orders.append(newOrder)
        }
    }
    
    func loadOrders() {
        // Implement the logic to load orders
        // This might involve fetching data from a local database or a remote API
    }
}

