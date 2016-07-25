//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Laticia Chance on 7/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class  Cart {
    
    var items = [Item]()
    
    func totalPriceInCents() -> Int {
        
        var total = 0
        
        for item in items {
            total += item.priceInCents
        }
        return total
    }
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    func removeItem(removedItem: Item) {
        
        if let index = items.indexOf(removedItem) {
            items.removeAtIndex(index)
        }
    }
    
//    This method should collect all of the items in the items property array whose name property matches the submitted string argument.

    
    func itemsWithName(nameOfItem: String) -> [Item] {
        
        var sameName = [Item]()
        
        for item in items {
            if item.name == nameOfItem {
                sameName.append(item)
            }
        }
        return sameName
    }
    
//    This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.
    
    func itemsWithMinimumPriceInCents(price: Int) -> [Item] {
        
       var arrayWithItemsBasedOnPrice = [Item]()
        
        for item in items {
            if item.priceInCents >= price {
                arrayWithItemsBasedOnPrice.append(item)
            }
        }
        return arrayWithItemsBasedOnPrice
    }
    
    func itemsWithMaximumPriceInCents(price: Int) -> [Item] {
        var arrayWithItemsBasedOnPrice = [Item]()
        
        for item in items {
            if item.priceInCents <= price {
                arrayWithItemsBasedOnPrice.append(item)
            }
        }
        return arrayWithItemsBasedOnPrice

    }
}