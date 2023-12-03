//
//  ContentView.swift
//  PinterestLayout
//
//  Created by Yoshinori Kobayashi on 2023/12/02.
//

import SwiftUI


struct ContentView: View {

    let gridItems =  [
        GridItem(height: 450, imgString: "img_0"),
        GridItem(height: 243, imgString: "img_1"),
        GridItem(height: 353, imgString: "img_2"),
        GridItem(height: 352, imgString: "img_3"),
        GridItem(height: 300, imgString: "img_4"),
        GridItem(height: 352, imgString: "img_5"),
        GridItem(height: 334, imgString: "img_6"),
        GridItem(height: 115, imgString: "img_7"),
        GridItem(height: 313, imgString: "img_8"),
        GridItem(height: 288, imgString: "img_9"),
        GridItem(height: 252, imgString: "img_10"),
        GridItem(height: 119, imgString: "img_11"),
        GridItem(height: 211, imgString: "img_12"),
        GridItem(height: 341, imgString: "img_13")
    ]

    @State private var columns = 3


    var body: some View {
        NavigationView {
            ScrollView {
                PinterestGrid(gridItems: gridItems, numOfColumns: columns, spacing: 10, horizontalPadding: 10)
            }
            .navigationBarItems(leading: removeBtn, trailing: addBtn)
            .navigationTitle("Pinterest Grid")
        }
    }
    var removeBtn: some View {
        Button(action: {
            columns -= 1
        }, label: {
            Text("Remove")
        })
        .disabled(columns == 1)
    }
    var  addBtn: some View {
        Button(action: {
            columns += 1
        }, label: {
            Text("Add")
        })
    }
}

#Preview {
    ContentView()
}
