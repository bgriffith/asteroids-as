﻿/*********************	LifeControl *** ******************//* Notes:** This class controls a players lives****** THIS CLASS IS NOT IMPLEMENTED YET*/package com{	// Import flash classes	import flash.display.Stage;	import flash.display.Sprite;		public class LifeControl extends Sprite {		public var stageRef:Stage;		public var livesLeft:uint;				// Constructor		public function LifeControl(stageRef:Stage,livesLeft:uint):void{			this.stageRef = stageRef;			this.livesLeft = livesLeft;		}				// Draw lives (ships in the top left of the window)		public function drawLives(){			// Loop through drawing proccess n number of times where n is the number of lives left			for(var i:int = 0; i < livesLeft; i++){				// Initialize a new sprite object				var lives:Sprite = new Sprite();				// Setup sprite				lives.graphics.lineStyle(1, 0xffffff);								//lives.graphics.beginFill(0xFFFFFF);				// Set x,y coords 				// Life 1				var xCoord1:uint = 16;				var yCoord1:uint = 10;				// Life 2				var xCoord2:uint = 9;				var yCoord2:uint = 30;				// Life 3				var xCoord3:uint = 23;				var yCoord3:uint = 30;				// Set margin				var margin:uint = 20;				// Draw sprites				switch(i){					case 0:					lives.graphics.moveTo(xCoord1, yCoord1);					lives.graphics.lineTo(xCoord1, yCoord1);					lives.graphics.lineTo(xCoord2, yCoord2);					lives.graphics.lineTo(xCoord3, yCoord3);					lives.graphics.lineTo(xCoord1, yCoord1);					break;										case 1:					lives.graphics.moveTo(xCoord1+margin, yCoord1);					lives.graphics.lineTo(xCoord1+margin, yCoord1);					lives.graphics.lineTo(xCoord2+margin, yCoord2);					lives.graphics.lineTo(xCoord3+margin, yCoord3);					lives.graphics.lineTo(xCoord1+margin, yCoord1);					break;										case 2:					lives.graphics.moveTo(xCoord1+(margin*2), yCoord1);					lives.graphics.lineTo(xCoord1+(margin*2), yCoord1);					lives.graphics.lineTo(xCoord2+(margin*2), yCoord2);					lives.graphics.lineTo(xCoord3+(margin*2), yCoord3);					lives.graphics.lineTo(xCoord1+(margin*2), yCoord1);					break;				}				// End sprite drawing				//lives.graphics.endFill();				// Add to display object list				addChild(lives);			}		}	}}