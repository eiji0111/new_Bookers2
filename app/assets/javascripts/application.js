// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require_tree .

let mapInstance;  //変数を宣言

function initMap() {  //initMapという関数を定義
  mapInstance = new google.maps.Map(document.getElementById("map"), {  //getElementByIdで指定したIDとマッチするドキュメンを取得するメソッド。
    center: { lat: 35.681236, lng: 139.767125 },  //地図の中央位置を指定。位置座標を表すパラメーター(lat:緯度、lng:経度)
    zoom: 15,  //数字で地図の拡大範囲を表す
  });
}