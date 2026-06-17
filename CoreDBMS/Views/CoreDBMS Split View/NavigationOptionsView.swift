//
//  NavigationOptionsView.swift
//  CoreDBMS
//
//  Created by Alejandro Lodes on 17/06/2026.
//

import SwiftUI

private enum NavigationOptions: Equatable, Hashable, Identifiable {
    case databases
    case tables
    case views
    case config
    static let mainPages: [NavigationOptions] = [.databases, .tables, .views, .config]
    
    var id: String {
        switch self {
        case .databases: return "Bases de Datos"
        case .tables: return "Tablas"
        case .views: return "Vistas"
        case .config: return "Configuración"
        }
    }
    
    var name: LocalizedStringResource {
        switch self {
        case .databases: LocalizedStringResource("Bases de Datos", comment: "Bases de Datos creadas en el motor.")
        case .tables: LocalizedStringResource("Tablas", comment: "Tablas creadas en la Base de Datos seleccionada.")
        case .views: LocalizedStringResource("Vistas", comment: "Vustas creadas en la Base de Datos seleccionada.")
        case .config: LocalizedStringResource("Configuración", comment: "Configuración de la aplicación.")
        }
    }
    
    var symbolName: String {
        switch self {
        case .databases: "cylinder"
        case .tables: "tablecells"
        case .views: "rectangle.and.text.magnifyingglass"
        case .config: "gearshape"
        }
    }
}

struct NavigationOptionsView: View {
    var body: some View {
        List{
            Section{
                ForEach(NavigationOptions.mainPages) { option in
                    Label(option.name, systemImage: option.symbolName)
                }
            }
        }
    }
}

#Preview {
    NavigationOptionsView()
}
