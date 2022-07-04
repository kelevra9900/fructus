//
//  OnboardingView.swift
//  Fructus
//
//  Created by Roger Torres on 04/07/22.
//

import SwiftUI

struct OnboardingView: View {
    //: MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    
    //: MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCard(fruit: item)
            }// : Loop
        }// : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//: MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
