//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Daniel Silva on 09/07/2024.
//

import Foundation

enum GHFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server is invalid. Please try again."
}
