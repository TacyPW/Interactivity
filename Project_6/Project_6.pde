/*
This project is a interpretation of the classic computer game Pong. 
Instead of a simple and intuitive interface, this interpretation
offers the user a varied experience throughout scapes of confusion,
nonsense and surreality. 

The end goal of the game is to create a visually interesting composition, 
by staying alive long enough to construct layers of mutable 
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

// Point oop = new Point(100, 100);
// Point hoop = new Point(110, 110);
// Line rope = new Line(oop, hoop);

Point last_collision = new Point(0,0);
Point current_pos = new Point(0,0);



ArrayList<Line> trail;
ArrayList<Point> bubbles;

Point origin = new Point(0,0);
Point center = new Point(width / 2, height / 2);
Line bruh;

void setup() {
	fullScreen();
    // size(600, 600);
    paddleW = new Paddle('w');
    paddleA = new Paddle('a');
    paddleS = new Paddle('s');
    paddleD = new Paddle('d');

	key = ' ';
    
		// paddleW.update();  // Update top paddle
		// paddleA.update();  // Update left paddle
		// paddleS.update();  // Update bottom paddle
		// paddleD.update();  // Update right paddle

    ball = new Ball();
    // noCursor();
    //surface.setResizable(true);

	trail = new ArrayList<Line>();
	trail.add(new Line(origin, origin));
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

	if (key == 'w') {
		paddleW.active = true;
		paddleA.active = false;
		paddleS.active = false;
		paddleD.active = false;
		paddleW.update();  // Update top paddle
	}
	else if (key == 'a') {
		paddleA.active = true;
		paddleW.active = false;
		paddleS.active = false;
		paddleD.active = false;
		paddleA.update();  // Update left paddle
	}
	else if (key == 's') {
		paddleS.active = true;
		paddleW.active = false;
		paddleA.active = false;
		paddleD.active = false;
		paddleS.update();  // Update bottom paddle
	}
	else if (key == 'd') {
		paddleD.active = true;
		paddleW.active = false;
		paddleA.active = false;
		paddleS.active = false;
		paddleD.update();  // Update right paddle
	}
	else if (key == ' ') {
		paddleW.active = true;
		paddleA.active = true;
		paddleS.active = true;
		paddleD.active = true;
		paddleW.update();  // Update top paddle
		paddleA.update();  // Update left paddle
		paddleS.update();  // Update bottom paddle
		paddleD.update();  // Update right paddle
	}
	else {
		paddleD.active = true;
		paddleW.active = false;
		paddleA.active = false;
		paddleS.active = false;
		paddleD.update();  // Update right paddle
	}
    
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
	//bubbles.add(new Point(ball.x, ball.y));
	//pr
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