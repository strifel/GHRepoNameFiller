function fillFieldWithRepoName(field, form) {
    if (!field.value) {
        field.value = location.href.split('/')[4];
    }
    form.querySelectorAll('button')[0].disabled = false;
    field.hidden = true;
}

document.getElementsByName('verify').forEach((element) => {
    fillFieldWithRepoName(element, element.parentElement.parentElement);
});
fillFieldWithRepoName(document.getElementById('confirm_repository_name'), document.getElementById('confirm_repository_name').parentElement.parentElement.parentElement.parentElement);
