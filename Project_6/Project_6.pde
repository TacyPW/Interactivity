Ball ball;
Paddle paddleW;
Paddle paddleA;
Paddle paddleS;
Paddle paddleD;

boolean collision;
boolean startscreen = false;

Point oop = new Point(100, 100);
Point hoop = new Point(110, 110);

Line rope = new Line(oop, hoop);

void sinLine(Line l) {
	float tlength = lineLength(l.start, l.end);
	float tangle = lineAngle(l);
	float wax;
	float way;

	println(tlength, tangle);

	push();
		translate(l.start.x, l.start.y);
		rotate(-1 * tangle);
		
		
		noFill();
		stroke(0, 255, 0);
		strokeWeight(2);

		beginShape();
		vertex(0, 0);
		curveVertex(0, 0);
			for (int i = 0; i <= tlength ; i += 5) {
				wax = i;
				way = 5 * sin(i);
				curveVertex(wax, way);
				//println(wax, way);
			}
			curveVertex(tlength, 0);
		curveVertex(tlength, 0);
		vertex(tlength, 0);
		endShape();
	pop();
}

void setup() {
    size(600, 600);
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
}

void draw() {
    background(255, 255, 255);

	sinLine(rope);


	beginShape();
	vertex(rope.start.x, rope.start.y);
	vertex(rope.end.x, rope.end.y);
	endShape();


	rope.end.y++;
	rope.end.x++;
	// draw_sin();
	

	/*
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
    collision = hitPaddle(paddleW, ball);
	collision = hitPaddle(paddleA, ball);
	collision = hitPaddle(paddleS, ball);
	collision = hitPaddle(paddleD, ball);

    if (collision == true) {
        println("boop");
	}
	*/
}


// BUGGY - fix for horizontal paddles - probably something w lack of py member variable
boolean hitPaddle(Paddle p, Ball b) {
    
    float circleDistanceX = abs(b.x - p.x - p.w / 2);
    float circleDistanceY = abs(b.y - p.y - p.h / 2);
    
    if(circleDistanceX > (p.w / 2 + b.radius)) { 
		return false; 
	}
    if(circleDistanceY > (p.h / 2 + b.radius)) { 
		return false; 
	}
    if(circleDistanceX <= p.w / 2) { 
		ball.hit(p);
		return true; 
	}
    if(circleDistanceY <= p.h / 2) { 
		ball.hit(p);
		return true; 
	}
    
    float cornerDistance = pow(circleDistanceX - p.w / 2, 2) + pow(circleDistanceY - p.h / 2, 2);
    if(cornerDistance <= pow(b.radius, 2)) {
		ball.hit(p);
		return true; 
	} 
	else {
		return false;
	}
}
