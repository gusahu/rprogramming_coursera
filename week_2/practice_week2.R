############################
# Week 2: General practices 
############################


## Control structures

# if - else

salario <- 1 # Salario básico por semana
hlab <- 45   # Horas laboradas por semana

if(hlab > 40) {
  hextr <- hlab - 40
  salext <- hextr * 0.05
  salario <- salario + salext
}

salario

## Generate a uniform random number
x <- runif(1, 0, 10)  
if(x > 3) {
  y <- 10
} else {
  y <- 0
}
x
y

## ifelse

x <- c(0, 3, 2, 8, -4, 1)
ifelse(x %% 2 == 0, 'Es par', 'Es impar')

## for

for(i in 1:10) {
  print(i + 1)
}

x <- c("a", "b", "c", "d", "e")
for(i in 1:5) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
          print(letter)
}

for(i in 1:5) print(x[i])

# another example

nrep <- 10  # Número de repeticiones
n <- 100    # Tamaño de la muestra
conteo <- numeric(nrep)    # Vector para almacenar el conteo

for(i in 1:nrep) {
        x <- runif(n, min = 1, max = 3)
        conteo[i] <- sum(x >= 2.5)
}

conteo

# nested for loops

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }   
}

# while loops

count <- 0
while (count < 10) {
  print(count)
  count <- count + 1
}

z <- 5
set.seed(1)

while (z >= 3 && z <= 10) {
          coin <- rbinom(1, 1, 0.5)
          if(coin == 1) {
                  z <- z + 1
          } else {
                  z <- z - 1
          }
}
print(z)

# Lanzamiento de moneda

resultados <- c("Cara", "Sello")
sample(x=resultados, size = 1)
num.lanza <- 0
num.caras <- 0
historial <- NULL

while (num.caras < 5) {
    res <- sample(x=resultados, size = 1)
    num.lanza <- num.lanza + 1
    historial[num.lanza] <- res
    if(res == "Cara") {
      num.caras <- num.caras + 1
    }
}

historial
num.lanza
num.caras

# repeat loops
x0 <- 1
tol <- 1e-8

repeat {
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol) {  ## Close enough?
    break
  } else {
    x0 <- x1
  } 
}


x <- 3  # Valor de inicio

repeat {
  print(x)
  x <-  x + 1
  if (x == 9) {
    break
  }
}

x <- c(1:100)
for (i in x) {
  if(i <= 20)
  {
    next
  } 
  print(i)
  if(i >30) {
    break
  }
}

# function

f <- function() {
  
}

class(f)
f()

f <- function() {
  cat("Hello world!")
}
f()

f <- function(num) {
  for (i in seq_len(num)) {
    cat("Hello world!")
  }
}
f(3)

wrapper <- "***"
content <- c("Write", "programs", "for", "people", "not", "computers")

highlight <- function(content, wrapper) {
  answer <- c(wrapper, content, wrapper)
  return(answer)
}

highlight(content,wrapper)

dry_principle <- c("Don't", "repeat", "yourself", "or", "others")

edges <- function(dry_principl) {
      c(dry_principl[1], dry_principl[length(dry_principl)])
}

edges(dry_principle)

dry_principle <- c("Don't", "repeat", "yourself", "or", "others")
content <- c("Write", "programs", "for", "people", "not", "computers")

# General function
edges <- function(v) {
    first <- v[1]
    second <- v[length(v)]
    answer <- c(first, second)
    return(answer)
}

edges(c(dry_principle, content))



















