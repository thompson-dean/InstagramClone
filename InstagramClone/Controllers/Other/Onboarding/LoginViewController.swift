//
//  LoginViewController.swift
//  InstagramClone
//
//  Created by Dean Thompson on 2022/06/29.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let usernameEmailField: UITextField = {
        return UITextField()
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.addTarget(LoginViewController.self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.addTarget(LoginViewController.self, action: #selector(didTapTermsButton), for: .touchUpInside)
        return button
    }()
    
    private let termsButton: UIButton = {
        let button = UIButton()
        button.addTarget(LoginViewController.self, action: #selector(didTapPrivacyButton), for: .touchUpInside)
        return button
    }()
    
    private let privacyButton: UIButton = {
        let button = UIButton()
        button.addTarget(LoginViewController.self, action: #selector(didTapCreateAccountButton), for: .touchUpInside)
        return button
    }()
    
    private let headerView: UIView = {
        return UIView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }
    
    private func addSubViews() {
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        view.addSubview(createAccountButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(headerView)
    }
    
    @objc func didTapLoginButton() { }
    @objc func didTapTermsButton() { }
    @objc func didTapPrivacyButton() { }
    @objc func didTapCreateAccountButton() { }

}
