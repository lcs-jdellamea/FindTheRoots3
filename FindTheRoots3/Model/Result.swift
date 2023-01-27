//
//  Result.swift
//  FindTheRoots3
//
//  Created by Jack Dellamea on 2023-01-27.
//

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}

let resultForPreviews = Result(a:1,
                               b: -6,
                               c: 8,
                               roots: "x = 2.00 and x = 4.00")

