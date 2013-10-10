/**
 * 日期格式化
 * @author broken_xie
 **/
Date.prototype.format = function(format) {
	var o = {
		"M+" : this.getMonth() + 1, // month
		"d+" : this.getDate(), // day
		"h+" : this.getHours(), // hour
		"m+" : this.getMinutes(), // minute
		"s+" : this.getSeconds(), // second
		"q+" : Math.floor((this.getMonth() + 3) / 3), // quarter
		"S" : this.getMilliseconds()
	// millisecond
	};
	if (/(y+)/.test(format))
		format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	for (var k in o){
		if (new RegExp("(" + k + ")").test(format)){
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
		}
	}
	return format;
};

/**
 * 打开新的标签
 * @param id 操作对象id
 * @param title 标签标题
 * @param url 链接
 * @param closable 是否可关闭
 * @author broken_xie
 **/
function openTab(id, title, url, closable) {
	if ($('#' + id).tabs('exists', title)) {
		$('#' + id).tabs('select', title);
	} else {
		$('#' + id).tabs('add', {
			title : title,
			href : url,
			closable : closable
		});
	}
}
