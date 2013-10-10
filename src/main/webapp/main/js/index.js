// 获取上下文
contextPath = typeof (contextPath) == "undefined" ? "" : contextPath;

$(function(){
	$('#nav').tabs({
		onSelect : function(){
			$(this).click(function(){
				reload();
			});
		}
	});
});

/**
 * 刷新页面
 * @author broken_xie
 */
function reload(){
	var leftPage = $('#nav').tabs('getSelected').panel('options').id;
	leftPage = leftPage.substring(0, leftPage.length - 3);
	window.location.href = contextPath + '/page/main/index?leftPage=' + leftPage;
}
















/*
*//**
 * 重新加载左侧菜单
 * @param id 标签id
 * @param nav 导航标题
 * @param tabId tab
 * @author broken_xie
 **//*
function reloadLeftMenu(id, nav, tabId){
	$("#"+id).children().remove();
	var options = {};
	switch (nav) {
		case "home":
			options = {
					"tab" : [{ // 一级Tab
						"title" : "home", // 一级Tab标题
						"subTab" : [{ // 二级Tab
							"title" : "subHome", // 二级Tab标题
							"id" : tabId, // tab id
							"url" : 'http://www.jb51.net/article/20428.htm', // 二级Tab链接地址
							"closable" : true // 二级Tab是否可关闭【true：可关闭；false：不可关闭】
						},{
							"title" : "subHome2",
							"id" : tabId,
							"url" : 'http://www.jb51.net/article/20428.htm',
							"closable" : true
						}]
					},{ // 一级Tab
						"title" : "home2", // 一级Tab标题
						"subTab" : [{ // 二级Tab
							"title" : "subHome22", // 二级Tab标题
							"id" : tabId, // tab id
							"url" : 'http://www.jb51.net/article/20428.htm', // 二级Tab链接地址
							"closable" : true // 二级Tab是否可关闭【true：可关闭；false：不可关闭】
						}]
					}]
			};
			break;
		default:
			break;
	}
	$("#"+id).append(generateLeft(options));
}

*//**
 * 生成左侧菜单
 * @param options 操作参数
 * @author broken_xie
 **//*
function generateLeft(options){
	
	var div = "";
	div += '<div class="easyui-accordion" data-options="fit:true,border:false">';
	div += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openTab(\'easyui-tabs\', \'google\',\'http://www.jb51.net/article/20428.htm\', true)" data-options="selected:true">google</a>';
	div += '</div>';
	
	var div = "";
	div += '<div class="easyui-accordion" data-options="fit:true,border:false">';
	for(var i = 0; i < options.tab.length; i++){
		var tab = options.tab[i];
		div += '<div title="'+tab.title+'" style="padding:10px;">';
		for(var j = 0; j < tab.subTab.length; j++){
			var subTab = tab.subTab[j];
			div += '<a href="javascript:void(0)" class="easyui-linkbutton" onclick="openTab(\''+subTab.id+'\', \''+subTab.title+'\',\''+subTab.url+'\', '+subTab.closable+')" data-options="selected:true">'+subTab.title+'</a>';
		}
		div += '</div>';
	}
	div += '</div>';
	return div;
}
*/