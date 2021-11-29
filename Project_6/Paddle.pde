class Paddle {
    
    float x;  // X-coordinate of the paddle
    float y;  // Y-coordinate of the paddle
	float dim_s = 5;
	float dim_l = 100;
    float w = 5;  // Width of the paddle
    float h = 100;  // Height of the paddle

	color red = #FF0000;
    color green = #00FF00;
    color blue = #0000FF;
    color cyan = #00FFFF;
    color magenta = #FF00FF;
    color yellow = #FFE800;
    color key = #000000;
    color white = #FFFFFF;

    boolean direct = false; // false is horizontal true is vertical
	
	boolean active = false; // highlight color toggle

	color highlight = #00FF00;

	char side;
    
    Paddle() {
        x = width - w * 2;
        y = height / 2;
	}
    
    Paddle(char sidein) {
		if (sidein == 'w') {
			side = sidein;
			direct = false;
		}
		else if (sidein == 'a') {
			side = sidein;
			direct = true;
		}
		else if (sidein == 's') {
			side = sidein;
			direct = false;
		}
		else {
			side = 'd';
			direct = true;
		}
		// movement direction
		if (direct) {
			w = dim_s;
			h = dim_l;
			x = width - dim_s * 2;
        	y = height / 2 - dim_l / 2;
		}
		else {
			w = dim_l;
			h = dim_s;
			x = width / 2 - dim_s / 2;
        	y = height - dim_l * 2;
		}
	}
    
	
    //Change paddle position with cursor
    void update() {
		// position
		if (this.active) {
			if (direct) { // vertical
				if (side == 'a') { // left
					x = dim_s;
					y = mouseY - h / 2 - dim_l / 2;
					y = constrain(y, 0, height - h);
				}
				else if (side == 'd') { // right
					x = width - dim_s * 2;
					y = mouseY - h / 2 - dim_l / 2;
					y = constrain(y, 0, height - h);
				}
			}
			else { // horizontal
				if (side == 's') { // bottom
					y = height - 2 * dim_s;
					x = mouseX - w / 2;
					x = constrain(x, 0, width - w);
				}
				else if (side == 'w') { // top
					y = dim_s;
					x = mouseX - w / 2;
					x = constrain(x, 0, width - w);
				}
			}
		}
	}
    
    //Draw paddle to the display window
    void display() {
        // color
		if (active) {
			fill(highlight);
		}
		else {
			fill(#000000);
		}
        noStroke();
        rect(x, y, w, h);
	}

	void set_h(color cin) {
		this.highlight = cin;
	}
    
}
