//
//  UseCaseObserver.swift
//  DesignPatternsList
//
//  Created by Kirill Khudyakov on 01.12.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import Foundation

protocol UseCaseble {
    var topic: String {get}
    func run()
}

class UseCaseObserver {
    private var topic: String = "use case Observer"
    func run() {
        print(topic)
        
        let observer = Observer()
        observer.subscribeOnChange = { variable in
            if let variable = variable as? String {
                print("\(variable)")
            }
        }
        
        let orbserable = Observable()
        orbserable.observer = observer
        
        orbserable.variable = "1"
        orbserable.variable = "2 "
        orbserable.variable = "3 "
        orbserable.variable = "4 "
        orbserable.variable = "5 "
        
    }
}
