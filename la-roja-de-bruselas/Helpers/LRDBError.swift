//
//  LRDBError.swift
//  la-roja-de-bruselas
//
//  Created by Fito Toledano on 2/20/21.
//

import Foundation

enum LRDBError: String, Error {
    case unableToComplete = "Something wrong happened. Please, try again."
    case invalidData = "The data received from the server is invalid. Please, contact Fito"
}
