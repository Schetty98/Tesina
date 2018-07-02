<%--
  Created by IntelliJ IDEA.
  User: Mattia
  Date: 17/06/2018
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
        <div class="modal modal-animation" id="modal">

            <div class="modal_content">
                <div class="modal_content__header">
                    <span class="modal-close" onclick="viewEditor('close')">
                      &times;
                  </span>

                    <div id="main">
                        <script>
                            $(".btn").click(
                                $(".btn").click()+$('#res').text(function(){
                                    $('#editor').html;
                                })
                            )
                        </script>
                        <div class="panel panel-default">
                            <div class="panel-heading">

                                <button class="button-form" data-toggle="dropdown" onclick="if(document.execCommand('increaseFontSize', false, null) == false) {addHTML('big')}"><strong>A</strong><i class="glyphicon glyphicon-arrow-up"></i></button>
                                <button class="button-form" data-toggle="dropdown" onclick="if(document.execCommand('decreaseFontSize', false, null) == false) {addHTML('small')}"><strong>A</strong><i class="glyphicon glyphicon-arrow-down"></i></button>


                                <button onClick="document.execCommand('bold', false, null)" title="Bold (CTRL+B)" class="button-form"><strong>B</strong></button>
                                <button onClick="document.execCommand('italic', false, null)" title="Italic (CTRL+I)" class="button-form"><em>I</em></button>
                                <button onClick="document.execCommand('underline', false, null)" title="Underline (CTRL+I)" class="button-form"><u>U</u></button>
                                <button class="button-form" onclick="image()"><img src="http://www.iconsdb.com/icons/preview/white/picture-xxl.png" alt="" width="15" height="15"></button>
                                <a class="button-form" onClick="document.getElementById('editor').innerHTML='<br>'"><strong>&times;</strong></a>
                            </div>
                            <div contenteditable="true" id="editor" placeholder="hello" onkeyup="$('#res').text($('#editor').html())" onchange="$('#res').text($('#editor').html())">
                            </div>
                        </div>
                        <div id="res"></div>
                        <button onclick="submitData()">submit</button>
                    </div>

                </div>
                </div>
            </div>


<script src="js/formJs.js"></script>
        <script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
</body>
</html>
