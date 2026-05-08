import Foundation

#if CocoaPods
public extension Foundation.Bundle {
    private class CocoapodsBundle {}

    static var coreModule: Bundle {
        let bundle = Bundle(for: CocoapodsBundle.self)
        if let frameworkBundlePath = bundle.path(forResource: "ReownAppKit", ofType: "bundle"),
           let resourceBundle = Bundle(path: frameworkBundlePath) {
            return resourceBundle
        }
        if let mainPath = Bundle.main.path(forResource: "ReownAppKit", ofType: "bundle"),
           let resourceBundle = Bundle(path: mainPath) {
            return resourceBundle
        }
        return bundle
    }
}
#else
public extension Foundation.Bundle {
    static var coreModule: Bundle { Bundle.module }
}
#endif
