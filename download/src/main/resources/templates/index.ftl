<html>
<title></title>
<body>
<h6>下载案例</h6>
<style>body {
        text-align:center
    }
    h1 {
        text-align:center;
    }
    .box {
        padding:50px;
        margin:auto;
        width:520px;
        border:1px solid gray;
        border-radius:2px;
    }
    a {
        font-size:18px;
        margin:50px;
        padding:10px;
        border:1px solid #333;
        border-radius:6px;
        color:white;
        transition:all .3s;
        text-decoration:none;
    }
    a:first-child {
        background:green;
    }
    a:last-child {
        background:blue;
    }
    a:hover {
        font-weight:bold;
        text-decoration:underline;
        font-size:24px;
        transform:scale(1.5, 1.5);
    }
</style>


<div class="box">
    <a id="download-btn" href="javascript:void(0)">批量文件下载</a>
</div>

<script>
    var btn = document.getElementById('download-btn');

    //将要进行多文件下载的mp3文件地址，以组数的形式存起来（这里只例了3个地址）
    var mp3arr = ["/downloadFile/1.png", "/downloadFile/2.png", "/downloadFile/3.png"];


    function download(name, href) {
        var a = document.createElement("a"), //创建a标签
            e = document.createEvent("MouseEvents"); //创建鼠标事件对象
        e.initEvent("click", false, false); //初始化事件对象
        a.href = href; //设置下载地址
        a.download = name; //设置下载文件名
        a.dispatchEvent(e); //给指定的元素，执行事件click事件
    }

    //给多文件下载按钮添加点击事件
    btn.onclick = function name(params) {
        for (var index = 0; index < mp3arr.length; index++) {
            download('第' + index + '个文件', mp3arr[index]);
        }
    }
</script>


</body>
</html>