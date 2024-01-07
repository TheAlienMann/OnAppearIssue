//
//  LoginView.swift
//

import SwiftUI

struct LoginView: View {
  let onLogin: () -> Void
  
  var body: some View {
    Button("Login", action: onLogin)
  }
}
