{
    let gaf_reload = false;
    function fillFieldWithRepoName(field) {
        if (!field.value) {
            field.value = location.href.split('/')[4];
            gaf_reload = true;
        }
    }

    document.getElementsByName('verify').forEach((element) => {
        fillFieldWithRepoName(element);
    });
    fillFieldWithRepoName(document.getElementById('confirm_repository_name'));
    if (gaf_reload) {
        location.reload();
    }
}
