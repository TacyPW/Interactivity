class Ball {
    
    float x;  // X-coordinate of the ball
    float px; // Prior x-coordinate
    float y;  // Y-coordinate of the ball
    float diameter = 20.0;  // Diameter of the ball
    float radius = diameter / 2;  // Radius of the ball
    float speedX = random(3);  // Speed along the x-axis
    float speedY = random(3);  // Speed along the y-axis
    
    Ball() {
        x = width / 2;
        y = height / 2;
}
    
    //Change ball position
    void update() {
        px =x;
        
        // Update ball coordinates
        x = x + speedX;
        y = y + speedY;
        
        // Reset position if ball leaves the screen
        if (  ( (x > width + radius) || (x < radius) ) || ( (y > height + radius) || (y < radius) )  ) {
            speedX = speedX * - 1;
            x = width / 2;
            y = height / 2;
            speedX = 2;
            speedY = 2;
        }
        
        // // If ball hits the left edge, change direction of X
        // if (x < radius) {
        //     x = radius;
        //     speedX= speedX * - 1;
        // } 
        
        // // If ball hits top or bottom, change direction of Y  
        // if (y > height - radius) {
        //     y = height - radius;
        //     speedY= speedY * - 1;
        // } 
		// else if (y < radius) {
        //     y = radius;
        //     speedY= speedY * - 1;
        // }
}
    
    //Draw ball to the display window
    void display() {
        fill(0);
        noStroke();
        ellipse(x, y, diameter, diameter);
}
    
    //Change ball direction when paddle is hit
    //and bump it back to the edge of the paddle
    void hit(Paddle p) {
		if (speedX >= 0) {
			speedX = speedX * -1;
			// Align the ball with the paddle
			if (speedX < 0) {
				x =  p.x - radius;
			} else {
				x = p.x + p.w + radius; 
			}
		}
		else if (speedY <= 0) {
			speedY = speedY * -1;
			// Align the ball with the paddle
			if (speedY < 0) {
				y = p.y - radius;
			} else {
				y = p.y + p.h + radius; 
			}
		}
        else if (speedX < 0) {
			speedY = speedY * -1;
			// Align the ball with the paddle
			if (speedY < 0) {
				y = p.y - radius;
			} else {
				y = p.y + p.h + radius; 
			}
		}

}
    
}
