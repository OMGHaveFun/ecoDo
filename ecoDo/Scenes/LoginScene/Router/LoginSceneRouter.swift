//
//  LoginSceneRouter.swift
//  ecoDo
//
//  Created by Alexander Yalchik on 15.10.21.
//

final class LoginSceneRouter: LoginSceneRoutingLogic, LoginSceneDataPassing {
    private weak var viewController: LoginSceneViewController?
    internal let dataStore: LoginSceneDataStore

    init(
        viewController: LoginSceneViewController?,
        dataStore: LoginSceneDataStore
    ) {
        self.viewController = viewController
        self.dataStore = dataStore
    }

    // MARK: Routing

     func routeToSomewhere() {

     }
}

private extension ___VARIABLE_sceneName___Router {
    // MARK: Navigation

//    func navigateToSomewhere(
//        source: ___VARIABLE_sceneName___ViewController,
//        destination: SomewhereViewController
//    ) {
//        source.show(destination, sender: nil)
//    }

    // MARK: Passing data

//    func passDataToSomewhere(
//        source: ___VARIABLE_sceneName___DataStore,
//        destination: inout SomewhereDataStore
//    ) {
//        destination.name = source.name
//    }
}
