import Foundation


#if CocoaPods
public extension Foundation.Bundle {
    private class CocoapodsBundle {}
    
    static var module: Bundle {
        let bundle = Bundle(for: CocoapodsBundle.self)
        if let frameworkBundlePath = bundle.path(forResource: "ReownAppKitUI", ofType: "bundle"),
           let resourceBundle = Bundle(path: frameworkBundlePath) {
            return resourceBundle
        }
        if let mainPath = Bundle.main.path(forResource: "ReownAppKitUI", ofType: "bundle"),
           let resourceBundle = Bundle(path: mainPath) {
            return resourceBundle
        }
        return bundle
    }
}

#endif
