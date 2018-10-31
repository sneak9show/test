function enn(h,e=3.14){
    return(h*h*e);
}

document.write(enn(5)+"<br>");
document.write(enn(7)+"<br>");
document.write(enn(10)+"<br>");

document.write("<br>");


function totalPrice(o,k){
    return"グループの合計金額は"+(o*500+k*200)+"円です。";
}

document.write("A"+totalPrice(2,4)+"<br>");
document.write("B"+totalPrice(1,5)+"<br>");
document.write("C"+totalPrice(3,7)+"<br>");