//
//  ContentView.swift
//  ReusableCompanentWithViewBuilder
//
//  Created by Ramill Ibragimov on 14.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isEditable: Bool = false
    @State private var name: String = "Bob"
    
    var body: some View {
        VStack {
            if isEditable {
                TextField("Enter name: ", text: $name)
            } else {
                Text(name)
            }
        }.type()
    }
}

extension View {
    func type() -> some View {
        print(Swift.type(of: self))
        return self
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
