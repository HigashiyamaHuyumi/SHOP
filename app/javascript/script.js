// Swiperのオプションを定数化
const opt = {
  loop: true, 
  pagination: { 
    el: '.swiper-pagination', 
  },
  navigation: { 
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  }
}

// Swiperを実行(初期化)
$(document).on('turbolinks:load', function() {
    let swiper = new Swiper('.swiper',opt);
});


document.addEventListener("DOMContentLoaded", function() {
  const agreementCheckbox = document.getElementById("withdraw-agreement");
  const withdrawButton = document.getElementById("withdraw-button");

  // ページ読み込み時にボタンの無効化を設定
  withdrawButton.classList.toggle("disabled", !agreementCheckbox.checked);

  // チェックボックスの変更に応じてボタンを制御
  agreementCheckbox.addEventListener("change", function() {
    withdrawButton.classList.toggle("disabled", !agreementCheckbox.checked);
  });
});