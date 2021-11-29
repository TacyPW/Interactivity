class Ball {
    float x;  // X-coordinate of the ball
    float px; // Prior x-coordinate

    float y;  // Y-coordinate of the ball
    float py; 

    float diameter = 5;  // Diameter of the ball
    float radius = diameter / 2;  // Radius of the ball
    
    float speedX = random(2,2.5);  // Speed along the x-axis
    float speedY = random(1,1.5);  // Speed along the y-axis
    
    float pcx = 0;
    float pcy = 0;

    Ball() {
        x = width / 10;
        y = height / 10;
    }
    
    //Change ball position
    void update() {
        px = x;
        py = y;

        // Update ball coordinates
        x = x + speedX;
        y = y + speedY;
        current_pos.x = x;
	    current_pos.y = y;

        // Reset position if ball leaves the screen
        if (  ( (x > width + radius) || (x < radius) ) || ( (y > height + radius) || (y < radius) )  ) {
            // speedX = speedX * - 1;
            float corner = random(0, 4);

            // NW
            if (corner > 0 && corner <= 1) {
                
            }
            // NE
            else if (corner > 1 && corner <= 2) {
                
            }
            // SE
            else if (corner > 2 && corner <= 3) {
               
            }
            // SW
            else {
               
            }
            x = width / 10;
            y = height / 10;
            current_pos.x = this.x;
	        current_pos.y = this.y;
            speedX = random(2,2.5);
            speedY = random(1,1.5);

            trail.clear();
            trail.add(new Line(center, center));
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

        Point helloPoint = trail.get(trail.size() - 1).end;
        Point hellaPoint = new Point(x,y);
        
        Line hellaLine = new Line(helloPoint, hellaPoint);
        noFill();
		stroke(0, 255, 0);
		strokeWeight(2);
        sinLine(hellaLine);
    }
    
    //Change ball direction when paddle is hit
    //and bump it back to the edge of the paddle

    void hit(Paddle p) {

        if (speedX > 0) {
            if (speedY > 0) {
                speedY = speedY * -1;
            }
            else {
                speedX = speedX * -1;
            }
        }
        else {
            if (speedY < 0) {
                speedY = speedY * -1;
            }
            else {
                speedX = speedX * -1;
            }   
        }
        
		// if (speedX >= 0) {
		// 	speedX = speedX * -1;
		// 	// Align the ball with the paddle
		// 	// if (speedX < 0) {
		// 	// 	x =  p.x - radius;
		// 	// } else {
		// 	// 	x = p.x + p.w + radius; 
		// 	// }
		// }
		// else if (speedY <= 0) {
		// 	speedY = speedY * -1;
		// 	// Align the ball with the paddle
		// 	// if (speedY < 0) {
		// 	// 	y = p.y - radius;
		// 	// } else {
		// 	// 	y = p.y + p.h + radius; 
		// 	// }
		// }
        // else if (speedX < 0) {
		// 	speedY = speedY * -1;
		// 	// Align the ball with the paddle
		// 	// if (speedY < 0) {
		// 	// 	y = p.y - radius;
		// 	// } else {
		// 	// 	y = p.y + p.h + radius; 
		// 	// }
		// }
        // else  {
		// 	speedX = speedX * -1;
		// 	// Align the ball with the paddle
		// 	// if (speedY < 0) {
		// 	// 	y = p.y - radius;
		// 	// } else {
		// 	// 	y = p.y + p.h + radius; 
		// 	// }
		// }

        trail.add(new Line(new Point(pcx, pcy), new Point(x, y)));

        pcx = current_pos.x;
        pcy = current_pos.y;
    }
    
}

//     void hit(Paddle p) {
//         // to the SE corner RIGHT D
// 		if (speedX > 0) {
//             speedX = speedX * -1;
// 			// Align the ball with the paddle
            
// 			//x = p.x - radius - p.w;
// 		}
//         // to the SW corner DOWN S
// 		else if (speedX <= 0) {
			
//             speedY = speedY * -1;
            
            
// 			// Align the ball with the paddle
            
//             //y = p.y - radius;
// 		}
//         // // to the NW LEFT A
//         // else if (speedX < 0 && speedY >= 0) {
// 		// 	speedX = speedX * -1;
// 		// 	// Align the ball with the paddle
            
//         //     //x =  p.x - radius;
// 		// }
//         // // to the NE UP W
//         // else if (speedX > 0 && speedY >= 0) {
// 		// 	speedY = speedY * -1;
// 		// 	// Align the ball with the paddle
            
//         //     //y =  p.y - radius;  
// 		// }
//         // else {
//         //     speedY = speedY * -1;
// 		// 	Align the ball with the paddle
// 		// 	if (speedX < 0) {
// 		// 		x =  p.x - radius;
// 		// 	} else {
// 		// 		x = p.x + p.w + radius; 
// 		// 	}
//         // }

        
//     }
    
// }

