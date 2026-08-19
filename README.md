# Pen Fighting

A 2D top-down physics game for Android built with Godot 4. This project digitizes the classic tabletop game where players flick pens to knock opponents off the desk.

## Overview
The game relies heavily on 2D physics (`RigidBody2D`) to calculate friction, momentum, and collision impact. It is designed around a local "pass-and-play" multiplayer loop, utilizing swipe gestures to apply directional impulse forces to the objects. 

## Tech Stack
* **Engine:** Godot 4.x
* **Language:** GDScript
* **Target Platform:** Android (Mobile Renderer, Portrait Viewport)
* **Core Systems:** `RigidBody2D` Physics, Turn-based State Machine

## Features
* **Swipe-to-Shoot Input:** Translates touch drag events into directional vectors and applies `apply_central_impulse()`.
* **Physics Interactions:** Custom physical materials simulate the mass, linear dampening, and friction of various real-world pens.
* **Local Multiplayer:** A turn-based state machine that waits for all physics bodies to enter a sleep state before switching active players.
* **Out-of-Bounds Detection:** `Area2D` triggers manage win/loss conditions when an object leaves the table boundary.

## Future Scope
* **AI Opponent:** Implementing a single-player bot that calculates trajectory vectors toward the player's position and utilizes `test_move()` logic to prevent self-elimination.
* **Impact Polish:** Audio and screen shake effects scaled dynamically by collision force values.

## Getting Started

### Prerequisites
* Godot Engine 4.x (Standard 64-bit)
* Android Build Templates configured in Godot

### Local Setup
1. Clone the repository:
   ```bash
   git clone [https://github.com/Pr3mSiva/Pen-Fight](https://github.com/Pr3mSiva/Pen-Fight)
