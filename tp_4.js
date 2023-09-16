//ignacio sannazzaro 94034/5

let cards = [];
let flippedCards = [];
let numPairs = 6;
let cardWidth = 100;
let cardHeight = 150;
let margin = 10;
let attempts = 20;

let tiempoInicial = 60;
let tiempoRestante = tiempoInicial;
let temporizador;

function setup() {
  createCanvas(750, 500);
  temporizador = setInterval(actualizarTemporizador, 1000);
  for (let i = 0; i < numPairs * 2; i++) {
    let val = floor(i / 2);
    let card = {
      value: val,
      flipped: false,
      matched: false,
    };
    cards.push(card);
  }
  shuffle(cards, true);
  
  let startX = margin;
  let startY = margin;
  
  for (let i = 0; i < cards.length; i++) {
    cards[i].x = startX;
    cards[i].y = startY;
    startX += cardWidth + margin;
    if (startX > width - cardWidth) {
      startX = margin;
      startY += cardHeight + margin;
    }
  }
}

function draw() {
  background(220);
  dibujarTemporizador();
  for (let card of cards) {
    if (card.flipped || card.matched) {
      fill(200);
      rect(card.x, card.y, cardWidth, cardHeight, 10);
      if (card.flipped) {
        fill(0);
        textSize(32);
        textAlign(CENTER, CENTER);
        text(card.value, card.x + cardWidth / 2, card.y + cardHeight / 2);
      }
    } else {
      fill(50);
      rect(card.x, card.y, cardWidth, cardHeight, 10);
    }
  }
  
  if (flippedCards.length === 2) {
    checkMatch();
    attempts++;
  }
  
  if (allMatched()) {
    textSize(32);
    fill(0);
    textAlign(CENTER, CENTER);
    text(`¡Juego completado!`, width / 2, height / 2);
  }
}


function mousePressed() {
  if (flippedCards.length < 2) {
    for (let card of cards) {
      if (!card.flipped && !card.matched && mouseX > card.x && mouseX < card.x + cardWidth &&
        mouseY > card.y && mouseY < card.y + cardHeight) {
        card.flipped = true;
        flippedCards.push(card);
        if (flippedCards.length === 2) {
          return;
        }
      }
    }
  }
}

function dibujarTemporizador() {
  textSize(24);
  fill(0);
  textAlign(CENTER);
  text(`Tiempo restante: ${tiempoRestante}`, width / 2.2, 400);
}

function actualizarTemporizador() {
  if (tiempoRestante > 0) {
    tiempoRestante--;
  } else {
    clearInterval(temporizador);
    console.log("¡Tiempo agotado!");
  }
}

function checkMatch() {
  if (flippedCards[0].value === flippedCards[1].value) {
    flippedCards[0].matched = true;
    flippedCards[1].matched = true;
  }
  setTimeout(resetCards, 1000);
}

function resetCards() {
  for (let card of flippedCards) {
    card.flipped = false;
  }
  flippedCards = [];
}

function allMatched() {
  for (let card of cards) {
    if (!card.matched) {
      return false;
    }
  }
  return true;
}
