// factorialFunction.js

// Para agregar argumentos
const num = parseFloat(process.argv[2]); 

// Verificar que cumple lo requerido
if(isNaN(num) || num < 0){
    console.log("Solo para enteros positivos bb, sorry ʕ•́ᴥ•̀ʔっ♡")
    return;
}

// Definimos la variable
let factNum = 1; 

// Y la que factorice
for (let i = 1; i <= num; i++) {
    factNum = factNum * i; 
    //console.log(factNum)
}

// Imprimimos
console.log("El numero factorial es: " + factNum)