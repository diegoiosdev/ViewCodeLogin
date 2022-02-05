//
//  LoginViewController.swift
//  ViewCodelogin
//
//  Created by Diego Fernando on 05/02/22.
//

import UIKit

class LoginViewController: UIViewController {

    private var  logoImageView = UIImageView()
    private var emailTextField = UITextField()
    private var passwordTextField = UITextField()
    private var loginButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //MARK: - Setup ViewController
        
        view.backgroundColor = .white
        
        logoImageView.image = UIImage(named: "Login")
        logoImageView.contentMode = .scaleAspectFit
        
        emailTextField.placeholder = "Email"
        emailTextField.borderStyle = .roundedRect
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.tintColor = .white
        
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
    
        //MARK: - Setup Contraints
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,constant: 24).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16).isActive = true
    
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 24).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16).isActive = true
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 24).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        //MARK: - Setup add actions
        
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
    }

    @objc
    private func didTapLoginButton() {
        print("Acesso autorizado")
    }
}

