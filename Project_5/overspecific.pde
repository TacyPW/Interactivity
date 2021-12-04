



public class Tunnel extends Room {

    PShape[] frames = new PShape[3];

    ArrayList<Message> script = new ArrayList<Message>(0);
    ArrayList<String> fortunes = new ArrayList<String>(0);

    Message observation;
    Message fortune;
    

    int stage = 0;
    int zoom = 0;

    public Tunnel () {
        super(10, "10.svg");
    }

    public Tunnel (int idx, String file) {
        super(idx, file);
    }

    public Tunnel (int idx, String file1, String file2, String file3) {
        super(idx, file1);

        frames[0] = loadShape(file1);
        frames[1] = loadShape(file2);
        frames[2] = loadShape(file3);

        // Basic Init
        observation = new Message();
        fortune = new Message();

        script.add(new Message("> Hello young lad"));
        script.add(new Message("> That's quite a collection you've got there"));
        script.add(new Message("Save it"));
        script.add(new Message("I hate it"));
        script.add(new Message("exit"));

        fortunes.add("you are a very plucky young fellow");
        fortunes.add("you will be successful if you pursue a career in agriculture");
        fortunes.add("you haven't thought enough about your last social interaction");
        fortunes.add("you wont ever be truly happy");
        fortunes.add("you are cool");
        fortunes.add("you are weirdly obsessed with grapes");
        fortunes.add("you aren't going to trader joe's later today.");
        fortunes.add("your mom is currently at the grocery store.");
        fortunes.add("you need to shower");        
        fortunes.add("you need a new pair of shoes");
        fortunes.add("you are pregnant");
        fortunes.add("someone is talking about you right now (only good things)");
        fortunes.add("everything you touch turns to gold");
        // fortunes.add("you ");
    }

    public void update() {
        super.back_img = frames[zoom];
    }


    public void set_fortune(ArrayList<Item> to_observe) {
        observation.content = "> I see that you've chosen ";
        for (int i = 0; i < to_observe.size(); ++i) {
            observation.content += "the " + to_observe.get(i).tag;
            if (i < to_observe.size() - 1) {
                observation.content += " and ";
            }
        }
        
        fortune.content = "> that means ";
        fortune.content += fortunes.get(int(random(0, (fortunes.size() - 1))));
        // fortune += "that means" + fortunes.get(int(random(0, fortunes.size() - 1)));
    }

    public void tunnel_driver() {
        if (zoom == 0) {
            this.render_back();
        }
        else if (zoom == 1) {
            this.render_back();
        }
        else {
            if (this.stage == 0) {
                if (script.get(0).not_rendered) {
                    this.render_back();
                }
                script.get(0).print(5 * vw, 5 * vw, 20 * vw, 70 * vh, fontsize, false);
            }
            else if (this.stage == 1) {
                if (script.get(1).not_rendered) {
                    this.render_back();
                }
                script.get(1).print(5 * vw, 5 * vw, 20 * vw, 70 * vh, fontsize, false);
            }
            else if (stage == 2) {
                if (script.get(2).not_rendered) {
                    this.render_back();
                }
                push();
                    fill(255, 200);
                    noStroke();
                    rect(0, 0, width, height);
                pop();
                
                script.get(2).print(10 * vw, 20 * vw, 30 * vw, height - 40 * vw, fontsize, true);
                script.get(3).print(width / 2 + 10 * vw, 20 * vw, 30 * vw, height - 40 * vw, fontsize, true);
            }
            else if (this.stage == 3) {
                conclusion.set_fortune(ChosenItems);
                if (observation.not_rendered) {
                    this.render_back();
                }
                observation.print(5 * vw, 5 * vw, 20 * vw, 70 * vh, fontsize * 0.8, false);
            }
            else if (this.stage == 4) {
                if (fortune.not_rendered) {
                    this.render_back();
                }
                fortune.print(5 * vw, 5 * vw, 20 * vw, 70 * vh, fontsize, false);
                script.get(4).print(85 * vw, 85 * vh, 10 * vw, 10 * vh, fontsize, true);
            }
            else {
                exit();
            }
        }
    }
}
/*

void RunText(String textin, float xin, float yin, float win, float hin, Incrementor inc) {
    for (int i = 0; i < inc.increment; ++i) {
        String tpart;
        tpart = tpart + str(textin.charAt(i));
    }
    text(tpart, xin, yin, win, hin);
    tincr++;
}


public class Incrementor {
    int increment = 0;

    public Incrementor () {
    }
    
    void incr() {
        increment++;
    }
}

 */