//
//  LoginSceneAssembly.swift
//  ecoDo
//
//  Created by Alexander Yalchik on 15.10.21.
//

final class LoginSceneAssembly {
    func build() -> LoginSceneAssemblyViewController {
        let presenter = LoginSceneAssemblyPresenter()
        let worker = LoginSceneAssemblyWorker()
        let interactor = LoginSceneAssemblyInteractor(presenter: presenter, worker: worker)
        let viewController = LoginSceneAssemblyViewController(interactor: interactor)

        presenter.viewController = viewController

        return viewController
    }
}
