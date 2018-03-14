//
//  Participant.swift
//  BugTracker
//
//  Created by D on 3/13/18.
//  Copyright © 2018 D. All rights reserved.
//

import UIKit

class Participant {
    let name: String
    let photo: UIImage
    let role: String
    let problems: [Problem]
    let solutions: [Solution]
    
    var problemRating: Int {
        return problems.reduce(0) { sum, problem in sum + problem.rating }
    }
    
    var solutionRating: Int {
        return solutions.reduce(0) { sum, solution in sum + solution.rating }
    }
    
    init(name: String, photo: UIImage, role: String, problems: [Problem], solutions: [Solution]) {
        self.name = name
        self.photo = photo
        self.role = role
        self.problems = problems
        self.solutions = solutions
    }
}