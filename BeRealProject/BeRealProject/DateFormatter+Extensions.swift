//
//  DateFormatter+Extensions.swift
//  BeRealProject
//
//  Created by Chelsea Garcia on 3/2/24.
//

import Foundation

extension DateFormatter {
    static var postFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
}
