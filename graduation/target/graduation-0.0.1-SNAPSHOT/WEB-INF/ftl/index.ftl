<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Insert title here</title>  
</head>  
<body>  
<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string("yyyy-MM-dd HH:mm:ss zzzz")}</br>
</#list>  
<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string("EEE,MMM d,yy")}</br>
</#list>  
<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string("EEEE,MMMM dd,yyyy,hh:mm:ss a '('zzz')'")}</br>
</#list>
<#--  
<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string.short}</br>
</#list>  

<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string.long")}</br>
</#list>  
<#list courseLikeList as courseLikeList>  
${courseLikeList.createTime?string.full")}</br>
</#list>  -->

 <#setting number_format = "currency" />
       <#assign price = 42 />
       ${price}
       ${price?string}
       ${price?string.number}
       ${price?string.currency}
       ${price?string.percent}
       
          <#assign foo=true />
   		   ${foo?string("是foo","非foo")}
   		   
   	    <#assign x=2.582 />
        <#assign y=444 />
        #{x;M2};
        #{y;M2};
        #{x;m1};
        #{y;m1};
        #{x;m1M2};
        #{y;m1M2};</br>
        
           ${'我的名字是\"yeek\"'};
         ${"我的文件保存在d：\\盘"};
         
          <#setting number_format = "number" />
         </br>
          <#list [[1,2,3],[4,5,6],[7,8],[9,0]] as x>
          <#list x as y>
       			  ${y};</br>
         </#list>
        </#list>
        
${courseLikeList[2].courceName}        
</body>  
</html>  