const btnSetting = document.querySelector(".btn-1");
const btnSubmmit = document.querySelector(".btn-submit");
const form = document.querySelector(".form");
const btnReset = document.querySelector(".btn-reset");
const inputSpeed = document.getElementById("speed");
const inputTarget = document.getElementById("target");

const target = document.querySelectorAll(".target");
const speed = document.querySelectorAll(".speed");
const runtime = document.querySelectorAll(".runtime");
const stt = document.querySelectorAll(".status");
const fgs = document.querySelectorAll(".fgs");

btnSetting.addEventListener("click", function () {
  form.classList.toggle("hidden");
});

btnSubmmit.addEventListener("click", function () {
  const data = {
    speed: inputSpeed.value,
    target: inputTarget.value,
  };
  console.log(data);
  fetch("http://192.168.1.229:8081/setSpecification", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  })
    .then((response) => response.json())
    .then((data) => {
      console.log("Success:", data);
    })
    .catch((error) => {
      console.error("Error:", error);
    });

  form.classList.add("hidden");
});

btnReset.addEventListener("click", function () {
  fetch("http://192.168.1.229:8081/resetData")
    .then((response) => response.json)
    .then((data) => console.log(data.status));
});
