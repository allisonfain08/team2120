//
//  testDropDownView.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/11/22.
//

import SwiftUI

struct testDropDownView: View {
    
    @State private var topBudget = ""
    @State private var bottomBudget = ""
    @State private var outerBudget = ""
    @State private var dressBudget = ""
    @State private var shoeBudget = ""
    @State private var accBudget = ""
    @State private var jewelryBudget = ""
    
    let topCostVals = ["Less than $50", "$50 - $100", "$100 - $150", "$150 - $200", "More than $200"]
    
    let costVals = ["Less than $50", "$50 - $100", "$100 - $150", "$150 - $200", "More than $200"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Tops: ", selection: $topBudget) {
                        ForEach(topCostVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Bottoms: ", selection: $bottomBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Jackets & Coats: ", selection: $outerBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Dresses: ", selection: $dressBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Shoes: ", selection: $shoeBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Accessories: ", selection: $accBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Jewelry: ", selection: $jewelryBudget) {
                        ForEach(costVals, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section {
                    Button("Save") {
                        // add the budget wherever it is needed
                    }
                }
            }
            .navigationTitle("Budget")
        }
    }
}

struct testDropDownView_Previews: PreviewProvider {
    static var previews: some View {
        testDropDownView()
    }
}
