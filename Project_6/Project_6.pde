Ball ball;
Paddle paddleW;
Paddle paddleA;
Paddle paddleS;
Paddle paddleD;
boolean collision;

void setup() {
    size(600, 600);
    paddleW = new Paddle('w');
    paddleA = new Paddle('a');
    paddleS = new Paddle('s');
    paddleD = new Paddle('d');
    
		// 	paddleW.update();  // Update top paddle
		// paddleA.update();  // Update left paddle
		// paddleS.update();  // Update bottom paddle
		// paddleD.update();  // Update right paddle

    ball = new Ball();
    // noCursor();
    //surface.setResizable(true);
}

void draw() {
    //background(255, 255, 255);
	draw_sin();
	
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
        
	}
}

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
