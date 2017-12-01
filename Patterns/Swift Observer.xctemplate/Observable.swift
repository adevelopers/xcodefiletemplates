//
//  Observable
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

class Observable<Type> {
    
    weak var observer: PropertyObserver?
    var variable: Type {
        willSet {
            observer?.willChange(variable: newValue)
        }
    }
    
    init(_ value: Type) {
        variable = value
    }
    
}
