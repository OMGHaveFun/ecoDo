//
//  LoginSceneInteractor.swift
//  ecoDo
//
//  Created by Alexander Yalchik on 15.10.21.
//

final class LoginSceneInteractor: LoginSceneBusinessLogic, LoginSceneDataStore {
    private let worker: LoginSceneWorkerLogic
    private let presenter: LoginScenePresentationLogic

    init(presenter: LoginScenePresentationLogic, worker: LoginSceneWorkerLogic) {
        self.presenter = presenter
        self.worker = worker
    }

    func fetch(request: LoginScene.Fetch.Request) {}
}
private extension LoginSceneInteractor {
    func presentError(message: String) {
        presenter.presentError(response: .init(message: message))
    }
}
