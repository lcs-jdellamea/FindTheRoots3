//
//  RootsCalculatorView.swift
//  FindTheRoots3
//
//  Created by Jack Dellamea on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    //MARK: Stored properties
    
    // Input values for co-efficients
    @State var a: Double = 1
    @State var b: Double = -6
    @State var c: Double = 8
    
    //List of prior results
    @State var priorResults: [Result] = []
    
    //  MARK: Computed properties
    
    // The result, possibilities are:
    // 1. Discriminant is negative, no real roots
    // 2. Discriminant is zero, so two equal real roots
    // 3. Discriminant is positive so two different real roots
    var result: String {
        
        let discriminant = b * b - 4 * a * c
        
        //check for negative descriminant (meaning no solutions)
        if discriminant < 0 {
           return "no real roots."
        } else {
            let x1 = ( b * -1 - discriminant.squareRoot() ) / (2 * a)
            let x2 = ( b * -1 + discriminant.squareRoot() ) / (2 * a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
    // The usser interface
    var body: some View {
        VStack {}
            .padding()
            .navigationTitle("Find the Roots")
    }
}
