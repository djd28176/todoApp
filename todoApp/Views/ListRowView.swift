//
//  ListRowView.swift
//  todoApp
//
//  Created by Jindong Du on 12/9/23.
//

import SwiftUI
var item1 = ItemModel(Title: "item1", IsCompleted: true)
var item2 = ItemModel(Title: "item2", IsCompleted: false)
struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical,8)
    }
}

#Preview {
    Group{
        ListRowView(item:item1)
        ListRowView(item:item2)
    }.previewLayout(.sizeThatFits)
}
