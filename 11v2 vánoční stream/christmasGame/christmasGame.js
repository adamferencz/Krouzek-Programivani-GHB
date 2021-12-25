let jezus;
let kid;
let jezusImg;
let kidImg;
let pressentImg;
let gameOver;
function preload(){
    kid = new Array(10);
    gameOver = false;
    jezusImg=loadImage("jezus.png");
    pressentImg=loadImage("pressent.jpg");
    kidImg=loadImage("kid.png");
}

function setup(){
    createCanvas(1200, 700);
    jezus=new Jezus();
    for(let i = 0;i < 10;i++) {
        kid[i]=new Kid();
    }
}

function draw(){
    if(gameOver) {
        background(255, 0, 0);
    }
    else {
        background(255);
    }
    jezus.movePressents();
    jezus.display();
    for(let i = 0;i < 10;i++) {
        for(let j = 0;j < 10;j++) {
            let d = dist(kid[i].x, kid[i].y, jezus.b[j].x, jezus.b[j].y);
            if(d < 30) {
                kid[i].hit(jezus.b[j].speedX, jezus.b[j].speedY);
            }
        }
        let d = dist(kid[i].x, kid[i].y, jezus.x, jezus.y);
        if(d < 31) {
            gameOver=true;
        }
        if(d > 3 * width) {
            kid[i].reset();
        }
        kid[i].move(jezus.x, jezus.y);
        kid[i].display();
    }
}

function keyPressed(){
    if(keyCode == UP_ARROW) jezus.move(0);
    if(keyCode == DOWN_ARROW) jezus.move(1);
    if(keyCode == LEFT_ARROW) jezus.move(2);
    if(keyCode == RIGHT_ARROW) jezus.move(3);
}

function keyReleased(){
    if(key == 'w') jezus.shoot(0);
    if(key == 's') jezus.shoot(1);
    if(key == 'a') jezus.shoot(2);
    if(key == 'd') jezus.shoot(3);
    if(key == 'r') jezus.reload();
}

class Jezus{
    constructor(){
        this.b = new Array(10);
        this.x=width / 2;
        this.y=height / 2;
        this.speed=5;
        for(let i = 0;i < 10;i++) {
            this.b[i]=new Pressent(this);
        }
    }

    movePressents(){
        for(let i = 0;i < 10;i++) {
            this.b[i].move();
        }
    }

    shoot(dir){
        for(let i = 0;i < 10;i++) {
            if(this.b[i].isFlying == false) {
                this.b[i].shoot(dir);
                break;
            }
        }
    }

    display(){
        imageMode(CORNER);
        jezusImg.resize(0, 50);
        image(jezusImg, this.x, this.y);
        for(let i = 0;i < 10;i++) {
            this.b[i].display();
        }
    }

    move(dir){
        if(dir == 0) {
            this.y-=this.speed;
        }
    else if(dir == 1) {
            this.y+=this.speed;
        }
    else if(dir == 2) {
            this.x-=this.speed;
        }
    else if(dir == 3) {
            this.x+=this.speed;
        }
    }

    reload(){
        for(let i = 0;i < 10;i++) {
            this.b[i].reset();
        }
    }

}

class Kid{
    constructor(){
        this.x=random(-2 * width, 2 * width);
        this.y=random(-2 * height, 2 * height);
        this.speedX=0;
        this.speedY=0;
        this.isHappy=false;
    }

    display(){
        imageMode(CENTER);
        kidImg.resize(0, 40);
        image(kidImg, this.x, this.y);
    }

    move(jx, jy){
        if(this.isHappy == false) {
            if(jx - this.x > 0) {
                this.speedX=1;
            }
    else {
                this.speedX=-1;
            }
            if(jy - this.y > 0) {
                this.speedY=1;
            }
    else {
                this.speedY=-1;
            }
        }
        this.x+=this.speedX;
        this.y+=this.speedY;
    }

    hit(sx, sy){
        this.speedX=sx;
        this.speedY=sy;
        this.isHappy=true;
    }

    reset(){
        this.x=random(-2 * width, 2 * width);
        this.y=random(-2 * height, 2 * height);
        this.isHappy=false;
    }

}

class Pressent{
    constructor(m){
        this.jezus=m;
        this.x=this.jezus.x;
        this.y=this.jezus.y;
        this.isFlying=false;
        this.defaultSpeed=20;
        this.speedX=0;
        this.speedY=0;
    }

    display(){
        imageMode(CENTER);
        pressentImg.resize(0, 20);
        image(pressentImg, this.x, this.y);
    }

    move(){
        if(this.isFlying) {
            this.x+=this.speedX;
            this.y+=this.speedY;
        }
    else {
            this.x=this.jezus.x;
            this.y=this.jezus.y;
        }
    }

    shoot(dir){
        if(dir == 0) {
            this.speedY=-this.defaultSpeed;
        }
    else if(dir == 1) {
            this.speedY=this.defaultSpeed;
        }
    else if(dir == 2) {
            this.speedX=-this.defaultSpeed;
        }
    else if(dir == 3) {
            this.speedX=this.defaultSpeed;
        }
        this.isFlying=true;
    }

    reset(){
        this.x=this.jezus.x;
        this.y=this.jezus.y;
        this.isFlying=false;
        this.speedX=0;
        this.speedY=0;
    }

}

