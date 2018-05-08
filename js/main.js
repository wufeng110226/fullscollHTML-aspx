/*!
 * wf 0.1
 *
 * @license MIT licensed
 *
 */
$(function(){
	var $tablist = $('.tab-box li');
	var $tabcontent = $('.tab-content .tc-box');

	$tablist.click(function(){
		var $this = $(this);
		var $tin = $this.index();
		$tablist.removeClass();
		$this.addClass('active');
		$tabcontent.removeClass('active');
		$tabcontent.eq($tin).addClass('active');
	})


	var myurl=GetQueryString("tablist");
	if (myurl == 'ton') {             //关于我们
	   	$(".abugp li").removeClass("active");
	   	$(".taOrganization").click();
	}else if (myurl == 'tjb') {
		$(".abugp li").removeClass("active");
		$(".taourJob").click();
	}else if (myurl == 'tfe') {
		$(".abugp li").removeClass("active");
		$(".taFranchise").click();
	}else if (myurl == 'tat') {
		$(".abugp li").removeClass("active");
		$(".taAchievement").click();
	}else if (myurl == 'tcus') {      //关于我们结束
		$(".abugp li").removeClass("active");
		$(".tachooseUs").click();
	}else if (myurl == 'tmm') {       //服务与支持
		$(".spgp li").removeClass("active");
		$(".tsmoldMaking").click();
	}else if (myurl == 'tmcp') {
		$(".spgp li").removeClass("active");
		$(".tsmechanicalProcess").click();
	}else if (myurl == 'tsp') {
		$(".spgp li").removeClass("active");
		$(".tssprayingPlant").click();
	}else if (myurl == 'tabl') {
		$(".spgp li").removeClass("active");
		$(".tsassemblyLine").click();
	}else if (myurl == 'tdde') {     //服务与支持结束
		$(".spgp li").removeClass("active");
		$(".tsdetectionDevice").click();
	}
})


function GetQueryString(name)
{
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	var r = window.location.search.substr(1).match(reg);
	if(r!=null)return  unescape(r[2]); return null;
}

$('.prohover').hover(function(){  			//导航弹出菜单
	$(".nav_pop").fadeIn(100);
	},function(){
		$(".nav_pop").find("li").hover(function(){
			$(".nav_pop").fadeIn(100);
		},function(){
			$(".nav_pop").hover(function(){
				$(this).fadeIn(100);
			},function(){
				$(".nav_pop").fadeOut(100);
			})
		})
	});