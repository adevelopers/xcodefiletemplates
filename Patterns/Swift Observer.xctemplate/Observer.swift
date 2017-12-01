//
//  Observer
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

protocol PropertyObserver: class {
    func willChange(variable: Any?)
    func didChange(variable: Any?)
}

class Observer: PropertyObserver {
    
    var subscribeOnChange: ((Any?)->Void)?
    
    func willChange(variable: Any?) {
        if let subscribe = subscribeOnChange {
            subscribe(variable)
        }
    }
    
    func didChange(variable: Any?) {
        if let subscribe = subscribeOnChange {
            subscribe(variable)
        }
    }
}

