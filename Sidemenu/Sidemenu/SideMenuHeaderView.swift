//
//  SideMenuHeaderView.swift
//  Sidemenu
//
//  Created by Akshay Kumar on 19/07/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundColor(.primary)
                .frame(width: 50, height: 50)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Akshay Kumar")
                    .font(.headline).bold()
                Text("akshaykumarios")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
