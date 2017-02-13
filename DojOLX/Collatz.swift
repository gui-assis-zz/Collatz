//
//  Collatz.swift
//  DojOLX
//
//  Created by Guilherme Assis on 12/02/17.
//  Copyright © 2017 Guilherme Assis. All rights reserved.
//

import UIKit

class Collatz {
    static func collatz(n: Int) -> [Int] {
        var sequence = [Int]()
        sequence.append(n)
        
        if n == 1 {
            return [1]
        }
        
        var newNumber = n
        while newNumber > 1 {
            if newNumber % 2 == 0 {
                newNumber = newNumber / 2
                sequence.append(newNumber)
            } else {
                newNumber = newNumber * 3 + 1
                sequence.append(newNumber)
            }
        }
        
        return sequence
    }
    
    static func sequence(number: Int) -> String {
        var maxNumber = -1
        var maxSequenceCount = -1
        var newNumber = number
    
        while newNumber >= 1 {
            let numberSequence = collatz(n: newNumber)
            if numberSequence.count > maxSequenceCount {
                maxSequenceCount = numberSequence.count
                maxNumber = newNumber
            }
            
            newNumber -= 1
        }
        
        return "O número com a maior sequência entre 1 e \(number) é \(maxNumber) e a maior sequência tem \(maxSequenceCount) números"
    }
}
