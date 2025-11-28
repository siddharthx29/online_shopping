let cart = JSON.parse(localStorage.getItem("cart") || "[]");

function addToCart(id){
  const product = products.find(p => p.id===id);
  const exist = cart.find(c=>c.id===id);
  if(exist){
    exist.qty += 1;
  } else {
    cart.push({...product, qty:1});
  }
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function renderCart(){
  const tbody = document.querySelector("#cart-table tbody");
  if(!tbody) return;
  tbody.innerHTML='';
  let total=0;
  cart.forEach((item,index)=>{
    const subtotal = item.price*item.qty;
    total+=subtotal;
    const tr = document.createElement("tr");
    tr.innerHTML=`
      <td><img src="${item.image}" style="height:50px;width:50px;object-fit:cover;margin-right:10px;">${item.name}</td>
      <td>₹${item.price}</td>
      <td><input type="number" min="1" value="${item.qty}" onchange="updateQty(${index},this.value)" class="form-control w-50"></td>
      <td>₹${subtotal}</td>
      <td><button class="btn btn-danger btn-sm" onclick="removeItem(${index})">Remove</button></td>
    `;
    tbody.appendChild(tr);
  });
  document.getElementById("cart-total").innerText = total;
}

function updateQty(index,qty){
  cart[index].qty = parseInt(qty);
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function removeItem(index){
  cart.splice(index,1);
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function checkout(){
  if(cart.length===0) return alert("Cart empty!");
  alert("Order placed successfully!");
  cart=[];
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}
let cart = JSON.parse(localStorage.getItem("cart") || "[]");

function addToCart(id){
  const product = products.find(p => p.id===id);
  const exist = cart.find(c=>c.id===id);
  if(exist){
    exist.qty += 1;
  } else {
    cart.push({...product, qty:1});
  }
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function renderCart(){
  const tbody = document.querySelector("#cart-table tbody");
  if(!tbody) return;
  tbody.innerHTML='';
  let total=0;
  cart.forEach((item,index)=>{
    const subtotal = item.price*item.qty;
    total+=subtotal;
    const tr = document.createElement("tr");
    tr.innerHTML=`
      <td><img src="${item.image}" style="height:50px;width:50px;object-fit:cover;margin-right:10px;">${item.name}</td>
      <td>₹${item.price}</td>
      <td><input type="number" min="1" value="${item.qty}" onchange="updateQty(${index},this.value)" class="form-control w-50"></td>
      <td>₹${subtotal}</td>
      <td><button class="btn btn-danger btn-sm" onclick="removeItem(${index})">Remove</button></td>
    `;
    tbody.appendChild(tr);
  });
  document.getElementById("cart-total").innerText = total;
}

function updateQty(index,qty){
  cart[index].qty = parseInt(qty);
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function removeItem(index){
  cart.splice(index,1);
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}

function checkout(){
  if(cart.length===0) return alert("Cart empty!");
  alert("Order placed successfully!");
  cart=[];
  localStorage.setItem("cart", JSON.stringify(cart));
  renderCart();
}
