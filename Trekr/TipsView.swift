//
//  TipsView.swift
//  Trekr
//
//  Created by Vansh Nagpal on 01/01/26.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        tips = try! decoder.decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id: \.text, children: \.children){tip in
                if tip.children != nil {
                    Label(tip.text,systemImage: "quote.bubble").font(.headline)
                }
                else{
                    Text(tip.text)
                }
        }.navigationTitle("Tips")
    }
}

#Preview {
    TipsView()
}
