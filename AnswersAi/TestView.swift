//
//  TestView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ScrollView {
            ForEach(0 ..< 10) { card in
                TodayCard()
//                    .padding(.horizontal, 20)
//                    .padding(.vertical, 6)
            }
        }
    }
}

//struct ListView: View {
//    var body: some View {
//        List {
//            ForEach(0 ..< 10) { card in
//                TodayCardNEW()
//                    .padding()
//            }
//        }
//        .listStyle(.plain)
//        
//        .listRowSeparator(.hidden, edges: .all)
//        
//        .listSectionSeparator(.hidden, edges: .all)
//    }
//}

#Preview("ScrollView") {
    Scroll()
}

//#Preview("List") {
//    ListView()
//}
