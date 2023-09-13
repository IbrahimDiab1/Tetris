/******************************************************************************/
/* Author      : Ibrahim Diab                                                 */
/* File Name   : Tetris_View.c                                                */
/* Description : the functions responsible for rendering different screens    */
/*               of the Tetris game based on the game's state.                */
/******************************************************************************/


#include <LIB/common_macros.h>
#include <LIB/std_types.h>

#include "../Inc/APP/Tetris/Model/Tetris_Model.h"
#include "../Inc/APP/Tetris/View/Tetris_View.h"


extern Tetris_Player_t Tetris_Player[MAX_PLAYERS];
extern uint8 Current_Tetris_Player;

// Function to initialize the Tetris view.
void Tetris_View_init(Tetris_View_t *view)
{
    view->initView();
}

// Function to handle the Tetris view based on the current game state.
void Tetris_View_handle(Tetris_Model_t *model, Tetris_View_t *view)
{
    switch (model->currentGameState)
    {
        case State_Welcome:

            // Render the welcome screen.
        	Tetris_View_renderWelcomeScreen(model, view);
            break;

        case State_TOP_Scores:

            // Render the top scores screen.
        	Tetris_View_renderTopScoresScreen(model, view);
            break;

        case State_Input_Name:

            // Render the name input screen.
        	Tetris_View_renderNameInputScreen(model, view);
            break;

        case State_Game_Play:

            // Render the game screen.
        	Tetris_View_renderGameScreen(model, view);
            break;

        case State_Game_Over:

            // Render the game over screen.
        	Tetris_View_renderGameOverScreen(model, view);
            break;

        default:
            break;
    }
}

// Function to render the welcome screen based on the model's state.
static void Tetris_View_renderWelcomeScreen(Tetris_Model_t *model, Tetris_View_t *view)
{
    // Check if the game state has changed.
    // Render static elements of the welcome screen (e.g., background, text).
    if (model->currentGameState != model->previousGameState)
        view->renderWelcomeScreenStaticElements();

    // Render dynamic elements of the welcome screen (e.g., selected option).
    view->renderWelcomeScreenDynamicElements(model);
}

// Function to render the top scores screen based on the model's state.
static void Tetris_View_renderTopScoresScreen(Tetris_Model_t *model, Tetris_View_t *view)
{
    // Check if the game state has changed.
    if (model->currentGameState != model->previousGameState)
        view->renderTopScoresScreenStaticElements(model);
}

// Function to render the name input screen based on the model's state.
static void Tetris_View_renderNameInputScreen(Tetris_Model_t *model, Tetris_View_t *view)
{
    // Check if the game state has changed.
    if (model->currentGameState != model->previousGameState)
        view->renderNameInputScreenStaticElements(model);

    // Render dynamic elements of the name input screen (e.g., input field).
    view->renderNameInputScreenDynamicElements(model);
}

// Function to render the game screen based on the model's state.
static void Tetris_View_renderGameScreen(Tetris_Model_t *model, Tetris_View_t *view)
{
    // Check if the game state has changed.
    if (model->currentGameState != model->previousGameState)
        view->renderGameScreenStaticElements(model);

    // Render dynamic elements of the game screen (e.g., falling objects, Score).
    view->renderGameScreenDynamicElements(model);
}

// Function to render the game over screen based on the model's state.
static void Tetris_View_renderGameOverScreen(Tetris_Model_t *model, Tetris_View_t *view)
{
    // Check if the game state has changed.
    if (model->currentGameState != model->previousGameState)
        view->renderGameOverScreenStaticElements(model);
}




