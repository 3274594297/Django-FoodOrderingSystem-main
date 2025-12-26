/* === MyAdmin 极简通用交互脚本 === */

document.addEventListener("DOMContentLoaded", function() {

    // 1. 通用删除确认逻辑
    var delLinks = document.querySelectorAll(".del");
    
    delLinks.forEach(function(link) {
        link.addEventListener("click", function(e) {
            if (!confirm("⚠️ 确定要删除这条数据吗？\n\n此操作不可恢复！")) {
                e.preventDefault();
            }
        });
    });


});