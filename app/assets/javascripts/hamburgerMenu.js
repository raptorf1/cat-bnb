hamburgerMenu = () => {
  let hamMenu = document.getElementById("myLinks");
  if (hamMenu.style.display == "flex") {
    hamMenu.style.display = "none";
  }
  else {
      hamMenu.style.display = "flex";
  }
}
