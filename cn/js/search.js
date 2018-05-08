
$('.search-button').on('click', function(e) {
    search();
})
function search() {
    var key = $("#txt_SearchKey").val();
    if (key == '') {
        alert("请输入搜索关键词！");
    } else {
    window.location.href = '/en/Search/?key=' + escape(key);
    }
}
function keydownsearch() {
    if (window.event.keyCode == 13) {
        search();
    }
}