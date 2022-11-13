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
    @State private var rating = ""
    @State private var review = 3
    
    
    let costVals = ["Less than $50", "$50 - $100", "$100 - $150", "$150 - $200", "More than $200"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Tops: ", selection: $topBudget) {
                        ForEach(costVals, id: \.self) {
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
                } header: {
                    Text("Budget")
                }
                //under Button(action: add the budget where needed
                Section {
                    Button(action: {segueToPersonal()},label: {Text("Next")
                    })
                }
            }
            .navigationTitle("Account Information")
        }
    }
}

func segueToPersonal() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let PersonalViewController = storyboard.instantiateViewController(identifier: "PersonalViewController")
    (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(PersonalViewController)
}
struct testDropDownView_Previews: PreviewProvider {
    static var previews: some View {
        testDropDownView()
    }
}
