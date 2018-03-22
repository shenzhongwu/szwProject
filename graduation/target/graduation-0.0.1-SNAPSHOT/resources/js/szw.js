//静态广告样式素材js
$(function(){

$(".szw_quyu").mouseenter(function(e){
        var w = $(this).width();
        var h = $(this).height();
        var x = (e.pageX - this.offsetLeft - (w / 2)) * (w > h ? (h / w) : 1);
        var y = (e.pageY - this.offsetTop - (h / 2)) * (h > w ? (w / h) : 1);
        var direction = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180) / 90) + 3) % 4; //direction的值为“0,1,2,3”分别对应着“上，右，下，左”
        var eventType = e.type;
        var dirName = new Array('上方','右侧','下方','左侧');
        $("#result").html(dirName[direction]+'进入');

        var beforeTop=0;
        var afterTop=0;
        var beforeLeft=0;
        var afterLeft=0;
        if(direction==0){
            beforeTop = 0-h;
        }else if(direction==1){
            beforeLeft = w;
        }else if(direction==2){
            beforeTop = h;
        }else{
            beforeLeft = 0-w;
        }
        $(this).find(".szw_xg").css({"top":beforeTop,"left":beforeLeft})
        $(this).find(".szw_xg").stop();
        $(this).find(".szw_xg").animate({
            top:afterTop,
            left:afterLeft
        },300)
    })
    $(".szw_quyu").mouseleave(function(e){
        var w = $(this).width();
        var h = $(this).height();
        var x = (e.pageX - this.offsetLeft - (w / 2)) * (w > h ? (h / w) : 1);
        var y = (e.pageY - this.offsetTop - (h / 2)) * (h > w ? (w / h) : 1);
        var direction = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180) / 90) + 3) % 4; //direction的值为“0,1,2,3”分别对应着“上，右，下，左”
        var eventType = e.type;
        var dirName = new Array('上方','右侧','下方','左侧');
        $('#result').html(dirName[direction]+'离开');
        var afterTop=0;
        var afterLeft=0;
        if(direction==0){
            afterTop = 0-h;
        }else if(direction==1){
            afterLeft = w;
        }else if(direction==2){
            afterTop = h;
        }else{
            afterLeft = 0-w;
        }
        $(this).find(".szw_xg").stop();
        $(this).find(".szw_xg").animate({
            top:afterTop,
            left:afterLeft
        },300)
    });
})