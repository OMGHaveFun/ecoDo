//
//  LoginScenePresenter.swift
//  ecoDo
//
//  Created by Alexander Yalchik on 15.10.21.
//

final class LoginScenePresenter: LoginScenePresentationLogic {
    weak var viewController: LoginSceneDisplayLogic?

    func presentError(response: LoginScene.Error.Response) {
//        DispatchQueue.main.async {
//            self.viewController?.displayError(viewModel: .init(message: response.message))
//        }
    }
}
