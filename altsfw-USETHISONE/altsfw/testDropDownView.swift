//
//  testDropDownView.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/11/22.
//

import SwiftUI

struct testDropDownView: View {
    let database = DBHelper()
    
    var indx = personArray.returnIndex()

    
    @State private var topBudget = "Less than $50"
    @State private var bottomBudget = "Less than $50"
    @State private var outerBudget = "Less than $50"
    @State private var dressBudget = "Less than $50"
    @State private var shoeBudget = "Less than $50"
    @State private var accBudget = "Less than $50"
    @State private var jewelryBudget = "Less than $50"
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
                    Button("Next") {
                        
                        //yeah next button currently does nothing ...
                        addBudgetVals(topBudget: topBudget, bottomBudget: bottomBudget, outerBudget: outerBudget, dressBudget: dressBudget, shoeBudget: shoeBudget, accBudget: accBudget, jewelryBudget: jewelryBudget, indx: indx)
        
                        segueToPersonal()
//                        Person.setTopBudget(topBudget)
//                        Person.setBottomBudget(bottomBudget)
//                        Person.setOuterBudget(outerBudget)
//                        Person.setAccBudget(accBudget)
//                        Person.setDressBudget(dressBudget)
//                        Person.setShoeBudget(shoeBudget)
//                        Person.setJewelryBudget(jewelryBudget)
                    }
                }
            }
            .navigationTitle("Account Information")
        }
    }
}

func addBudgetVals(topBudget: String, bottomBudget: String, outerBudget: String, dressBudget: String, shoeBudget: String, accBudget: String, jewelryBudget: String, indx: Int) {
    personArray.person[indx].topBudget = topBudget
    personArray.person[indx].bottomBudget = bottomBudget
    personArray.person[indx].outerBudget = outerBudget
    personArray.person[indx].dressBudget = dressBudget
    personArray.person[indx].shoeBudget = shoeBudget
    personArray.person[indx].accBudget = accBudget
    personArray.person[indx].jewelryBudget = jewelryBudget
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
