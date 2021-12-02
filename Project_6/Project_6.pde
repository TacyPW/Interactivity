/*
This project is a interpretation of the classic computer game Pong. 
Instead of a simple and intuitive interface, this interpretation
offers the user a varied experience throughout scapes of confusion,
nonsense and surreality. 

The end goal of the game is to create a visually interesting composition, 
by staying alive long enough to construct layers of mutable, 
every evolving chaos. 

--Tacy Prins Woodlief
*/

Ball ball;

Paddle paddleW;
Paddle paddleA;
Paddle paddleS;
Paddle paddleD;

boolean collisionW = false;
boolean collisionA = false;
boolean collisionS = false;
boolean collisionD = false;

boolean collide = true;

boolean startscreen = true;
PImage startimg;


// Point oop = new Point(100, 100);
// Point hoop = new Point(110, 110);
// Line rope = new Line(oop, hoop);

Point last_collision = new Point(0,0);
Point current_pos = new Point(0,0);

ArrayList<Line> trail;
ArrayList<Bubble> bubbles;

Point origin = new Point(0,0);
Point center = new Point(width / 2, height / 2);
Line bruh;

//PShape startimg = loadShape("introscreen.svg");

void setup() {
	// fullScreen();
	size(600, 600);
	pixelDensity(2);

	startimg = loadImage("startimg.jpg");
    
    paddleW = new Paddle('w');
	paddleW.set_h(paddleW.green);
    paddleA = new Paddle('a');
	paddleA.set_h(paddleA.red);
    paddleS = new Paddle('s');	
	paddleS.set_h(paddleS.blue);
    paddleD = new Paddle('d');
	paddleD.set_h(paddleD.yellow);
	

	paddleW.active = true;  // Update top paddle
	paddleA.active = true;  // Update left paddle
	paddleS.active = true;  // Update bottom paddle
	paddleD.active = true; 
    
	paddleW.update();  // Update top paddle
	paddleA.update();  // Update left paddle
	paddleS.update();  // Update bottom paddle
	paddleD.update();  // Update right paddle

    ball = new Ball();
    // noCursor();
    //surface.setResizable(true);

	trail = new ArrayList<Line>();
	trail.add(new Line(origin, origin));

	bubbles = new ArrayList<Bubble>();
	bubbles.add(new Bubble(0, 0, paddleA.cyan));
	// bubbles.add(new Point(center.x, center.y));
}

void draw() {
    background(255, 255, 255);

	push();
		stroke(0);
		noFill();
		for (int i = 1; i < trail.size() - 1; ++i) {
			// println(i, ": ", trail.get(i).start.x, trail.get(i).start.y, trail.get(i).end.x, trail.get(i).end.y);
			sinLine(trail.get(i));
		}
	pop();
	
	
	push();
		for (int i = 2; i < bubbles.size(); ++i) {
			// println(i, ": ", trail.get(i).start.x, trail.get(i).start.y, trail.get(i).end.x, trail.get(i).end.y);
			bubbles.get(i).render();
		}
	pop();
	

	/* push();
		stroke(0);
		noFill();
		if (bubbles.size() >= 2) {
			for (int i = 0; i < bubbles.size() - 1; ++i) {
				// println(i, ": ", trail.get(i).start.x, trail.get(i).start.y, trail.get(i).end.x, trail.get(i).end.y);
				bubbles.get(i).render();
			}
		}
	pop(); */

	paddleW.update();  // Update top paddle
	paddleA.update();  // Update left paddle
	paddleS.update();  // Update bottom paddle
	paddleD.update();  // Update right paddle

    paddleW.display();  // Draw top paddle    
    paddleA.display();  // Draw left paddle    
    paddleS.display();  // Draw bottom paddle    
    paddleD.display();  // Draw right paddle    

    ball.update();  // Update ball
    ball.display();  // Draw ball
    
    //Set variable to true if shapes are overlapping, false if not
		// collisionW = hitPaddle(paddleW, ball);

		// collisionA = hitPaddle(paddleA, ball);

		// collisionS = hitPaddle(paddleS, ball);

		collisionW = hitPaddle(paddleW, ball);
		collisionA = hitPaddle(paddleA, ball);
		collisionS = hitPaddle(paddleS, ball);
		collisionD = hitPaddle(paddleD, ball);

	if (collisionW) {
		collide = true;
		println("boop w");
	}
	else if (collisionA) {
		collide = true;
		println("boop a");
	}
	else if (collisionS) {
		collide = true;
		println("boop s");
	}
	else if (collisionD) {
		collide = true;
		println("boop d");
	}

	if (startscreen) {
		image(startimg, 0, 0, width, height);
	}
}


// // BUGGY - fix for horizontal paddles 
boolean hitPaddle(Paddle p, Ball b) {
	
	float circleDistanceX = abs(b.x - p.x - p.w/2);
	float circleDistanceY = abs(b.y - p.y - p.h/2);

	if(circleDistanceX > (p.w / 2 + b.radius)) { 
		return false; 
	}
	if(circleDistanceY > (p.h / 2 + b.radius)) { 
		return false; 
	}
	if(circleDistanceX <= p.w) { 
		ball.hit(p);
		
		return true; 
	}
	if(circleDistanceY <= p.h) { 
		ball.hit(p);
		
		return true; 
	}
	
	float cornerDistance = pow(circleDistanceX - p.w / 2, 2) + pow(circleDistanceY - p.h / 2, 2);

	if (cornerDistance <= pow(b.radius, 2)) {
		ball.hit(p);
		return true; 
	} 
	else {
		return false;
	}
}


void keyPressed() {
	bubbles.add(new Bubble(ball.x, ball.y, key));
	if (startscreen) {
		startscreen = false;
	}
	if (key == 'w') {
		paddleW.active = true;
		paddleA.active = false;
		paddleS.active = false;
		paddleD.active = false;
	}
	else if (key == 'a') {
		paddleA.active = true;
		paddleW.active = false;
		paddleS.active = false;
		paddleD.active = false;
	}
	else if (key == 's') {
		paddleS.active = true;
		paddleW.active = false;
		paddleA.active = false;
		paddleD.active = false;
	}
	else if (key == 'd') {
		paddleD.active = true;
		paddleW.active = false;
		paddleA.active = false;
		paddleS.active = false;

	}
	else if (key == ' ') {
		paddleW.active = true;
		paddleA.active = true;
		paddleS.active = true;
		paddleD.active = true;

	}
	// else {
	// 	paddleD.active = true;
	// 	paddleW.active = false;
	// 	paddleA.active = false;
	// 	paddleS.active = false;
	// }

	// if (key == 'w' || key == 'a' || key == 's' || key == 'd') {
	// 	bubbles.add(new Bubble(ball.x, ball.y, key));
	// }

}

// boolean hitPaddle(Paddle p, Ball b) {
 
//   float circleDistanceX = abs(b.x - p.x - p.w/2);
//   float circleDistanceY = abs(b.y - p.y - p.h/2);
 
//   if (circleDistanceX > (p.w/2 + b.radius)) { return false; }
//   if (circleDistanceY > (p.h/2 + b.radius)) { return false; }
//   if (circleDistanceX <= p.w) { ball.hit(p); return true; }
//   if (circleDistanceY <= p.h) { ball.hit(p); return true; }
 
//   float cornerDistance = pow(circleDistanceX - p.w/2, 2) + pow(circleDistanceY - p.h/2, 2);
//   if (cornerDistance <= pow(b.radius, 2)) {
// 	ball.hit(p);
//     return true; 
//   } else {
//     return false;
//   }
// }