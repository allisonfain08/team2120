//
//  TempUIView.swift
//  altsfw
//
//  Created by Mija Kennedy on 11/11/22.
//

import SwiftUI

struct TempUIView: View {
    var body: some View {
        Text("Test View")
    }
}
@Binding var rating: Int

var label = ""

var maximumRating = 5

var offImage: Image?
var onImage = Image(systemName: "star.fill")

var offColor = Color.gray
var onColor = Color.yellow

struct TempUIView_Previews: PreviewProvider {
    static var previews: some View {
        TempUIView()
        
    }
}
