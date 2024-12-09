//
//  DismissibleView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct DismissibleView<Content: View>: View {
    
    @Environment(\.dismiss) private var dismiss
    private var content: () -> Content
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            content()
            dismissButton
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
    }
    
    var dismissButton: some View {
        HStack {
            Spacer()
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .background(.black.opacity(0.6))
                    .foregroundStyle(.white.opacity(0.9))
                
                    .padding(-2.3)
                    .clipShape(.circle)
            }
            .padding([.top, .trailing], 20)
            .shadow(radius: 7)
        }
    }
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
}

#Preview {
    DismissibleView {
        Color.cyan.clipShape(.rect(cornerRadius: 30))
    }
    .frame(width: 300, height: 300)
}
