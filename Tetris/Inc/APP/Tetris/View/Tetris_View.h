/*********************************************************************************/
/* Author      : Ibrahim Diab                                                    */
/* File Name   : Tetris_View.h                                                   */
/* Description : various game screens rendering based on the current game state. */
/*********************************************************************************/


#ifndef _TETRIS_VIEW_H_
#define _TETRIS_VIEW_H_

#include "../Inc/APP/Tetris/Model/Tetris_Model.h"

// Tetris View module: Contains functions for rendering different game screens based on the game's state.

typedef struct {
    // Function pointers for various rendering tasks
    void (*initView)                            (void);
    void (*renderWelcomeScreenStaticElements)   (void);
    void (*renderWelcomeScreenDynamicElements)  (Tetris_Model_t *model);
    void (*renderTopScoresScreenStaticElements) (Tetris_Model_t *model);
    void (*renderNameInputScreenStaticElements) (Tetris_Model_t *model);
    void (*renderNameInputScreenDynamicElements)(Tetris_Model_t *model);
    void (*renderGameScreenStaticElements)      (Tetris_Model_t *model);
    void (*renderGameScreenDynamicElements)     (Tetris_Model_t *model);
    void (*renderGameOverScreenStaticElements)  (Tetris_Model_t *model);
} Tetris_View_t;

/************************************** APIs Functions **************************************/

void Tetris_View_init     		  (Tetris_View_t *view);
void Tetris_View_handle   		  (Tetris_Model_t *model, Tetris_View_t *view);


/************************************** Private Functions **************************************/

static void Tetris_View_renderWelcomeScreen   (Tetris_Model_t *model, Tetris_View_t *view);
static void Tetris_View_renderTopScoresScreen (Tetris_Model_t *model, Tetris_View_t *view);
static void Tetris_View_renderNameInputScreen (Tetris_Model_t *model, Tetris_View_t *view);
static void Tetris_View_renderGameScreen      (Tetris_Model_t *model, Tetris_View_t *view);
static void Tetris_View_renderGameOverScreen  (Tetris_Model_t *model, Tetris_View_t *view);

#endif // _TETRIS_VIEW_H_
