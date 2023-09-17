document.addEventListener("DOMContentLoaded", function () {
    const num1Input = document.getElementById("num1");
    const num2Input = document.getElementById("num2");
    const num3Input = document.getElementById("num3");
    const compareBtn = document.getElementById("compareBtn");
    const resultDiv = document.getElementById("result");

    compareBtn.addEventListener("click", function () {
        const num1 = parseInt(num1Input.value);
        const num2 = parseInt(num2Input.value);
        const num3 = parseInt(num3Input.value);

        if (isNaN(num1) || isNaN(num2) || isNaN(num3)) {
            resultDiv.innerText = "Por favor, insira três números válidos.";
        } else if (num1 === num2 || num1 === num3 || num2 === num3) {
            resultDiv.innerText = "Por favor, insira três números diferentes.";
        } else {
            const maiorNumero = Math.max(num1, num2, num3);
            resultDiv.innerText = `O maior número é: ${maiorNumero}`;
        }
    });
});
