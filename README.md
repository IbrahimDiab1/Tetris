# Tetris Game

## Introduction

Tetris is a classic tile-matching puzzle video game where the player arranges falling blocks of various shapes to create complete horizontal lines.

## MVC Design Pattern

The Tetris game is built using the Model-View-Controller (MVC) design pattern. This pattern separates the application into three interconnected components:

### Model

The Model represents the game's core logic. It includes modules for handling game rules, object movements, and scoring. In our implementation, the Model also manages random object generation and line clearing.

### View

The View is responsible for the game's presentation and user interface. It handles interactions with external devices, such as TFT displays. The View communicates with the Model to obtain game data and render it on the screen.

### Controller

The Controller processes user input and translates it into actions within the game. It includes modules for button handling, allowing players to move and rotate falling blocks.

## System Architecture

The game is structured into three layers: the Microcontroller Abstraction Layer (MCAL), the Hardware Abstraction Layer (HAL), and the Application (APP) Layer.

### MCAL (Microcontroller Abstraction Layer)

- **RCC (Reset and Clock Control):** Manages the microcontroller's clock settings.
- **DIO (Digital Input/Output):** Provides a GPIO interface for digital input and output operations.
- **AFIO (Alternate Function I/O):** Handles alternate function configurations for GPIO pins.
- **NVIC (Nested Vector Interrupt Controller):** Manages interrupt priorities and settings.
- **STK (SysTick Timer):** Controls the SysTick timer for precise timing.
- **EXTI (External Interrupts):** Enables and manages external interrupts.
- **GPT (General-Purpose Timer):** Provides timer functionality for various time-related operations.
- **SPI (Serial Peripheral Interface):** Manages communication with external devices using the SPI protocol.

### HAL (Hardware Abstraction Layer)

- **Buttons:** Handles button configurations and input reading.
- **TFT (Thin-Film Transistor) Display:** Manages the TFT display for rendering the game interface.

### APP (Application Layer)

- **Model:** Contains game logic, rules, scoring, and object management.
- **View:** Renders the game on external devices (e.g., TFT display) based on data from the Model.
- **Controller:** Processes user input (button presses) and translates them into game actions.

## Module Structure

Each module in the game follows a consistent structure:

- **Interface File:** Contains declarations of functions and data structures exposed to other modules.
- **Private File:** Contains private functions and internal data structures used within the module.
- **Config File:** Provides configuration settings for the module.
- **Program (.c) File:** Implements the module's functionality.

## Components Required

To set up and play the Tetris game, the following components are required:

- **Microcontroller (STM32F103):** The heart of the game, responsible for controlling all aspects of gameplay.
- **Five Buttons:** These buttons serve as the game controller, including navigation and rotation.
- **TFT Screen:** (ST7735S 1.8inch)A Thin-Film Transistor (TFT) display for rendering the game's visuals.
- **Wires and Breadboard:** Used for connecting the microcontroller, buttons, TFT screen, and power supply.

## Pins Connection

- **Buttons:**
  - UP: PA10
  - DOWN: PA1
  - LEFT: PA6
  - RIGHT: PA8
  - ROTATE OK: PA9

- **SPI Configuration (for TFT):**
  - SPI1: 
    - SCK (Clock): PA5
    - MOSI (Master Out Slave In): PA7

- **TFT Screen:**
  - A0 (Data/Command Control): PA2
  - Reset: PA3

## Configuration

**Buttons Configuration:**
- Customize button assignments by modifying the pins in the `Tetris_Controller_Button.h` file.

**Buttons Behavior:**
- Configure button behavior, including pull type and interrupt state, in the `controller_Buttons.c` file's initialization function.

**Debouncing and Long Press:**
- Adjust debouncing delay and long-press duration settings via the `Button_config.h` file to fine-tune button responsiveness.

**Color Customization (TFT Display):**
- Tailor the game's visual interface by modifying color settings in the `Tetris_View_TFT.h` file.

**TFT Display Configuration:**
- Adapt TFT screen pin assignments and SPI settings according to your hardware setup by editing the `TFT_config.h` file.

**Game Logic Customization:**
- Personalize game parameters such as score values, speed, and other game options in the `Tetris_model.h` file to align the gameplay with your preferences.

## System Configuration

**System Clock Source (HSI):**
- The system clock is sourced from HSI (High-Speed Internal) with a frequency of 8 MHz, ensuring accurate timing.
  
**Tick Timer (Timer 2):**
- Timer 2 is configured as the tick timer, providing essential timing functions for the system.

**System Tick and Delay:**
- The system tick is used as a delay mechanism to control timing within the game.

**Button Configuration:**
- Buttons are configured with internal pull-down resistors for reliable input handling.

## Video and Images

### Gameplay Video

- Watch a short video demonstration of the Tetris game in action [https://drive.google.com/file/d/17LM5EVKs0PjUvsnb-pFeqHGKEiAGLBNa/view?usp=sharing].

### Screenshots

![Welcome Screen](images/welcome screen.jpg) 
* Welcome Screen*

![Input Name](images/player name.jpg) 
* Input Name*

![Game Play](images/game play.jpg) 
* Game Play*

![Top Players](images/top players.jpg) 
* Top Players*

## Conclusion

The Tetris project embodies a classic game design with a flexible architecture. Utilizing the MVC pattern and a well-structured system, you can effortlessly customize gameplay rules, visuals, and hardware components. This project demonstrates the power of modularity in software design, making it a valuable resource for embedded systems and game development enthusiasts.
