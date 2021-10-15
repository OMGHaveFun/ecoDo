//
//  LoginSceneViewController.swift
//  ecoDo
//
//  Created by Alexander Yalchik on 15.10.21.
//

import UIKit

final class LoginSceneViewController: ViewController {
    private let interactor: LoginSceneBusinessLogic

    private var router: (LoginSceneRoutingLogic & LoginSceneDataPassing)!

    init(interactor: LoginSceneBusinessLogic & LoginSceneDataStore) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)

        router = LoginSceneRouter(viewController: self, dataStore: interactor)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
}

private extension LoginSceneViewController {
    func fetchData() {
        interactor.fetch(request: .init())
    }
}

extension LoginSceneViewController: LoginSceneDisplayLogic {
    func display(state: LoginScene.State) {
        switch state {
        case let .error(model):
            displayError(viewModel: model)
        case .loading:
            displayLoading()
        case .displaySomething:
            displaySomething()
        }
    }

    func displayError(viewModel: LoginScene.Error.ViewModel) {

    }

    func displayLoading() {

    }

    func displaySomething() {

    }
}
