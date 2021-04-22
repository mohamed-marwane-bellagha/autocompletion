

function myFunction() {
    $("#result").empty()
    let inputval=$('#txt').val()
    $.ajax({
        type:'POST',
        url:'post.php',
        data:{
            nom:inputval
        },
        datatype: 'text',
    }).done(function(data){ 
        result=JSON.parse(data)
        if(inputval==''){
            $("#result").empty()
        }else{
        for(var i = 0; i < result.length; i++) {
            var obj = result[i];
            $("#result").append("<li><a href='element.php?id="+obj.id+"'>"+obj.nom+"</a></li>")
        }
    }
        
    })
  }