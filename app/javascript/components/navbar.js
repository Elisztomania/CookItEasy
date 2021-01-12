const hiddenNav = () => {
  const hideItem = document.getElementById("links");

  if (hideItem == null)
    return

  hideItem.classList.toggle('hidden')
}


const clickOnMenu = () => {
  document.getElementById('menu').addEventListener('click', (e) => {
    hiddenNav();
  })
};

export {
  clickOnMenu
};
