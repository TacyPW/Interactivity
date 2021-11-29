class Point {
    float x;
    float y;

    Point(float xin, float yin) {
        this.x = xin;
        this.y = yin;
    }
}

class Line {
    Point start;
    Point end;

    Line(Point sin, Point ein) {
        start = sin;
        end = ein;
    }

    Line(Line lin) {
        this.start.x = lin.start.x;
        this.start.y = lin.start.y;
        this.end.x = lin.end.x;
        this.end.y = lin.end.y;
    }

    void render() {
        line(start.x, start.y, end.x, end.y);
    }
}

float lineLength(Point i, Point j) {
	float a;
	float b;
	float c;
	if (i.x >= j.x) {
		b = i.x - j.x;

		if (i.y >= j.y) {
			a = i.y - j.y;
		}
		else {
			a = j.y - i.y;
		}
	}
	else {
		b = j.x - i.x;

		if (i.y >= j.y) {
			a = i.y - j.y;
		}
		else {
			a = j.y - i.y;
		}
	}
	c = sqrt(sq(a)+sq(b));
	// println("diagdist is", str(c));
	return c;
}

float lineLength(Line l) {
    float a;
	float b;
	float c;
	if (l.start.x >= l.end.x) {
		b = l.start.x - l.end.x;

		if (l.start.y >= l.end.y) {
			a = l.start.y - l.end.y;
		}
		else {
			a = l.end.y - l.start.y;
		}
	}
	else {
		b = l.end.x - l.start.x;

		if (l.start.y >= l.end.y) {
			a = l.start.y - l.end.y;
		}
		else {
			a = l.end.y - l.start.y;
		}
	}
	c = sqrt(sq(a)+sq(b));
	// println("diagdist is", str(c));
	return c;
}

float lineAngle(Point i, Point j) {
	float a = i.y - j.y;
	float b = i.x - j.x;
	float c = lineLength(i, j);

	float alpha = asin(a / c);

	// println( "the angle is", alpha);
	return alpha;
}

float lineAngle(Line l) {
	float a = l.start.y - l.end.y;
	float b = l.start.x - l.end.x;
	float c = lineLength(l);

	float alpha = asin(a / c);

	// println( "the angle isss", alpha);
	return alpha;
}

void sinLine(Point a, Point b) {
    Line l = new Line(a,b);
	float tlength = lineLength(l);
	float tangle = lineAngle(l);
	float wax;
	float way;

	// println(tlength, tangle);

	push();
		translate(l.start.x, l.start.y);
        
        if (ball.speedX >= 0) {
            rotate(-1 * tangle);
        }
        else {
            rotate(-1 * tangle + TAU);
        }
		
		noFill();
		stroke(255, 0, 255);
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
            vertex(tlength, 0);
		endShape();
	pop();
}

void sinLine(Line l) {
	float tlength = lineLength(l.start, l.end);
	float tangle = lineAngle(l);
	float wax;
	float way;

	// println(tlength, tangle);

	push();
		translate(l.start.x, l.start.y);
        if (ball.speedX >= 0) {
            rotate(-1 * tangle);
        }
        else {
            rotate(1 * tangle + PI);
        }
		// rotate(-1 * tangle);

		noFill();
		stroke(255, 0, 255);
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

float sinx = 0;
float siny = height / 2;

void draw_sin(Point start, Point end) {
    
    float tx = sinx;
    float ty = siny;

    circle(tx, ty, 2);

    sinx++;
    siny = siny + 5* sin(sinx);
}
