var activeFilter = document.getElementsByClassName('filter-item');
console.log (activeFilter);

for(let i = 0; i < activeFilter.length; i++){
    activeFilter[i].addEventListener("mouseout", ()=>{
        activeFilter[i].classList.remove('active-menu-item');
    });
    activeFilter[i].addEventListener("mouseover", ()=>{
        activeFilter[i].classList.toggle('active-menu-item');
    });
}