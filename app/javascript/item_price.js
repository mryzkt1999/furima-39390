function item_price (){
  const itemPrice  = document.getElementById("item-price");
  itemPrice.addEventListener("keyup", () => {
    const sellingfee = itemPrice.value * 0.1;
    const addTaxPrice  = document.getElementById("add-tax-price");
    const profit = document.getElementById("profit");
    addTaxPrice.innerHTML = Math.floor(`${sellingfee}`);
    profit.innerHTML = Math.floor(itemPrice.value - `${sellingfee}`);
  });
};

window.addEventListener('load', item_price);
