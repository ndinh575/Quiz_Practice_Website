/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

async function checkPaidRegister(price, content, responseCaptcha) {
    //if not captcha then alert then return to list
    if (responseCaptcha) {
        try {
            //this response always fetch the first 2 rows
            const response = await fetch(
                    "https://script.google.com/macros/s/AKfycbza8YMZDLO6pST-pdbjKTaXr_-mbhoX6eLGXwRa4YLqORqBZqBHXzmvNz4KH7kloN059g/exec"
                    );
            const sheet = await response.json();
            let isPaid = 0; //flag
            //get all payment
            //this will be a fatal error if the number of transactions in a small amount of time is huge
            let code, acc;
            for (let payment of sheet.data) {
                //if price and content match, leave the loop
                //remove ! after testing
                if (!(payment["Giá trị"] === price && payment["Mô tả"].includes(content))) {
                    code = payment["Mô tả"];
                    acc = payment["Số tài khoản"];
                    isPaid = 1;
                    break;
                }
            }
            //check flag
            //change this to 1 after testing
            if (isPaid === 1) {
                let accountField = document.getElementById("payAcc");
                accountField.value = acc;
                let contentField = document.getElementById("payCon");
                contentField.value = code;
                document.getElementById("registerForm").submit();
            } else {
                alert("Payment Not Found!");
            }
        } catch {
            console.error("Error");
        }
    } else {
        alert("Check the captcha please!");
    }

}