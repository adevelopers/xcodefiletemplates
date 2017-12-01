//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___ {
    
    private var topic: String = "use case Observer"
    
    func run() {
        print(topic)
        
        let observer = Observer()
        observer.subscribeOnChange = { variable in
            if let variable = variable as? String {
                print("\(variable)")
            }
        }
        
        let variable = Observable<String>("")
        variable.observer = observer
        
        variable.title = "1"
        variable.title = "2 "
        variable.title = "3 "
        variable.title = "4 "
        variable.title = "5 "
        
    }
}

