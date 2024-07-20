//
//  SideMenuView.swift
//  Sidemenu
//
//  Created by Akshay Kumar on 19/07/24.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    @State private var selectedOption: SideMenuOptionModel?
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderView()
                        VStack {
                            ForEach(SideMenuOptionModel.allCases) { option in
                                Button(action: {
                                    onOptionTapped(option)
                                }, label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)
                                })
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.background)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
    
    private func onOptionTapped(_ option: SideMenuOptionModel) {
        selectedOption = option
        selectedTab = option.rawValue
        isShowing = false
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
