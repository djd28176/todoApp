//
//  todoAppApp.swift
//  todoApp
//
//  Created by Jindong Du on 12/8/23.
//

import SwiftUI

@main
struct todoAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
