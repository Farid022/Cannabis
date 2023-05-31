//
//  OnBoard.swift
//  Cannabis
//
//  Created by Muhammad Farid Ullah on 26/05/2023.
//

import SwiftUI

struct OnBoard: Identifiable {
    let id: UUID
    let title: String
    let description: String
//    let tag: String
//    let color: Color
}

var onBoardItems: [OnBoard] = [
    OnBoard(
        id: UUID(),
        title: "The physical and psychological affects Vary.",
        description: "Performance athletes, medical patients, creators, and researchers use our technology to track cannabis."),
    
    OnBoard(
        id: UUID(),
        title: "You will only buy bad weed once",
        description: "Low quality and incompatible products can have negative and adverse affects. Save time and money by logging your cannabis."),
    
    OnBoard(
        id: UUID(),
        title: "Choose the right Cannabis for the right activities",
        description: "Whether you are hiking Kilimanjaro or cooking cannabis for the first time, we will provide you with tips and recommendations for each case."),
    
    OnBoard(
        id: UUID(),
        title: "Elevate your life",
        description: "Cannaissancesis a companion to your cannabis journey; like a good friend guiding you on your path of exploration..."),
]

var onBoardItems2: [OnBoard] = [
    OnBoard(
        id: UUID(),
        title: "Hello, Beautiful",
        description: "Are you ready for a journey?"),
    
    OnBoard(
        id: UUID(),
        title: "Cannabis is highly Unique, like you",
        description: ""),
    
    OnBoard(
        id: UUID(),
        title: "Here is your dream, Cannabis",
        description: "Are you ready get advantages?"),
    
    OnBoard(
        id: UUID(),
        title: "Cannabis is highly Unique, like you",
        description: "Are you ready for a journey?"),
]
