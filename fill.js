let gaf_reload = false;
document.getElementsByName('verify').forEach((element) => {
    if (!element.value) {
        element.value = location.href.split('/')[4];
        gaf_reload = true;
    }
});
if (gaf_reload) {
    location.reload();
}
