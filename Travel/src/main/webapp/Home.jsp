<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script>
//ignore the first 13lines,the trick here is all about tracking the element till it comes into the view, by measuring height and stuff of both window screen and the element itself, its that simple, muhammad khairy
$(function () {
$('.insta').clone().appendTo('.a1');
    $('.a1:first').find('.post img').attr('src','https://goo.gl/pnYKzy')
    $('.a1:first').find('.caption span').text('Khitma partner');
    $('.a1:eq(1)').find('.post img').attr('src','https://goo.gl/ebVC6W')
    $('.a1:eq(1)').find('.caption span').text('Sip your coffee quite silently Get lost into some appealing books pages');
    $('.a1:eq(2)').find('.post img').attr('src','https://goo.gl/CtfVAj')
    $('.a1:eq(2)').find('.caption span').text('Cupcakes can perform rites of pilgrimage too ');
    $('.a1:eq(3)').find('.post img').attr('src','https://goo.gl/Ch5atv')
    $('.a1:eq(3)').find('.caption span').text('Rest in Peace Ya Narges');
    $('.a1:eq(4)').find('.post img').attr('src','https://goo.gl/ZpfGSf');
    $('.a1:eq(4)').find('.caption span').text('I promised I will never compose poems on your eyes .. but I did');
$(window).on('scroll resize', function holy_nob() {
    var    wh = $(window).height();
    var    wt = $(window).scrollTop();
    var    wb = (wt + wh);
    var    rbj = $('.lil-bar');
    var    ft = $('.footer-cont');
    var    ft_t = ft.offset().top;
    var    ft_h = ft.height();
    var    tof  = (ft_t + ft_h);
    var    fol  = (ft_h + 15);
   if(wb >= tof){
            rbj.css('bottom',fol);
        }else{
           rbj.css('bottom','15px');}
    $('.fade-scroll').each(function(){
        var   element = $(this);
        var    el_h = element.height();
        var    el_t = element.offset().top;
        var    el_b = (el_t + el_h);
        if((el_b > wt) && (el_t < wb)){
            element.addClass('animation');
        }
        else {
      element.removeClass('animation');
    }
          if (wt > el_t) {
      element.css('opacity', 1-(wt - el_t)/850);
    }
         if(wt > 10) {$('.navbar').addClass('navfar').find('span').addClass('mini')
                      $('.fa-instagram').addClass('bisc');
                             }
       
    else{
        $('.navbar').removeClass('navfar');
        $('.navbar span').removeClass('mini');
        $('.fa-instagram').removeClass('bisc');
    }
    });
}); 
     $('.list-order, .collapse').on('click',function() {
       $('.list').toggleClass('animate');
        $('.list-order').toggleClass('ba');
    });
  $("a[href='#']").click(function(e){
    e.preventDefault();
  });
}); //end
   

</script>
<style >
body,
html {
    background: #fafafa;
    margin: 0;
    padding: 0;
}
* {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: proxima-nova-condensed, sans-serif;
}
a {
    text-decoration: none;
    color: #262626;
}
section {
    margin: 0 auto;
    width: 100%;
    max-width: 600px;
    padding-top: 9em;
}
.navbar {
    z-index: 16;
    position: fixed;
    top: 0;
    width: 100%;
    -webkit-transition: all .2s ease;
    -o-transition: all .2s ease;
    transition: all .2s ease;
    height: 77px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-direction: row;
    flex-direction: row;
    border-bottom: 1px solid transparent;
}
.navfar {
    background-color: white;
    border-bottom: 1px solid #e6e6e6;
    -webkit-box-shadow: 0px 2px 10px 0px rgba(0, 0, 0, 0.12);
    box-shadow: 0px 2px 10px 0px rgba(0, 0, 0, 0.12);
}
.navbar a {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.navbar a i {
    font-size: 45px;
    height: 43px;
    width: 43px;
    line-height: 42px;
    text-align: center;
    margin-right: 10px;
    border-radius: 6px;
    -webkit-transition: all .5s ease;
    -o-transition: all .5s ease;
    transition: all .5s ease;
}
.bisc {
    color: white;
    margin-right: 0px;
    background: -webkit-gradient(linear, right top, left bottom, from(#4c68d7), color-stop(#8a3ab9), color-stop(#cd486b), color-stop(#fb8750), to(#FF9800));
    background: -webkit-linear-gradient(right top, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    background: -o-linear-gradient(right top, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    background: linear-gradient(to left bottom, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    -webkit-transform: rotate(360deg) scale(1.1);
    -ms-transform: rotate(360deg) scale(1.1);
    transform: rotate(360deg) scale(1.1);
}
.mini {
    -webkit-transform: scale(0.8);
    -ms-transform: scale(0.8);
    transform: scale(0.8);
}
.navbar span {
    background-image: url(https://goo.gl/NLUdLH);
    background-position: 0px 0px;
    height: 51px;
    width: 177px;
    display: inline-block;
    -webkit-transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
}
.lil-bar {
    background: #fff;
    position: fixed;
    bottom: 15px;
    right: 15px;
    border: solid 1px #c8d7e1;
    border-radius: 3px;
    height: 35px;
    line-height: 1;
    z-index: 50000;
    -webkit-transition: all 0.2s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: all 0.2s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: all 0.2s cubic-bezier(0.18, 0.89, 0.32, 1.28);
}
.bar-cont {} .bar-cont a {
    display: inline-block;
    padding: 8px;
    color: #636363;
    font-size: 20px;
}
.insta {
    background-color: #fff;
    border: 1px solid #e6e6e6;
    border-radius: 3px;
    width: 100%;
    margin-bottom: 60px;
}
.a1 {
    -webkit-transform: translate3d(-200px, 0px, 0px);
    transform: translate3d(-200px, 0px, 0px);
    -webkit-transition: all 300ms linear;
    -o-transition: all 300ms linear;
    transition: all 300ms linear;
}
.animation {
    -webkit-transform: translate3d(0px, 0px, 0px);
    transform: translate3d(0px, 0px, 0px);
}
.top-insta {
    position: relative;
    padding: 16px;
    height: 60px;
    width: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.top-insta img {
    width: 30px;
    height: 30px;
    border-radius: 50%;
    -ms-flex-item-align: center;
    align-self: center;
}
.top-insta .user {
    margin-left: 10px;
    -ms-flex-item-align: center;
    align-self: center;
    font-size: 13px;
    font-weight: 600
}
.dot {
    cursor: pointer;
    background-image: url(https://goo.gl/NLUdLH);
    background-repeat: no-repeat;
    background-position: -434px -345px;
    height: 16px;
    width: 16px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-item-align: center;
    align-self: center;
    right: 16px;
    position: absolute;
    text-align: right;
}
.post {
    overflow: hidden;
    position: relative;
    width: 100%;
}
.overlay {
    background: rgba(0, 0, 0, 0.23);
    position: absolute;
    left: 0;
    top: 0;
    opacity: 0;
    -webkit-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    width: 100%;
    height: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}
.overlay:after {
    content: '';
    width: 600px;
  pointer-events: none;  
    height: 100%;
    background: black;
    background: rgba(255, 255, 255, .1);
    display: inline-block;
    position: absolute;
    left: 388px;
    top: 0;
    -moz-transform: skew(-45deg);
    -webkit-transform: skew(-45deg);
    -webkit-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
}
.overlay span {
    background-image: url(https://goo.gl/NLUdLH);
    background-repeat: no-repeat;
    background-position: -2px -53px;
    height: 79px;
    width: 88px;
    display: inline-block;
    cursor: pointer;
    -webkit-transform: scale(.5);
    -ms-transform: scale(.5);
    transform: scale(.5);
    -webkit-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: all .5s cubic-bezier(0.18, 0.89, 0.32, 1.28);
}
.post:hover .overlay:after {
    left: -600px;
}
.post:hover .overlay {
    opacity: 1
}
.post:hover .overlay span {
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1)
}
.post img {
    width: 100%;
    height: 100%;
    border-top: 1px solid #e6e6e6;
    border-bottom: 1px solid #e6e6e6;
}
.footer {
    padding: 0 16px;
}
.react {
    margin-top: 4px;
    position: relative;
}
.react a {
    border: none;
    background: transparent;
    cursor: pointer;
    margin-right: 10px;
}
.react a:last-child {
    margin-right: 0
}
.react .love {
    background-image: url(https://goo.gl/NLUdLH);
    background-position: -408px -156px;
    height: 24px;
    width: 24px;
    display: inline-block;
}
.react .comment {
    background-image: url(https://goo.gl/NLUdLH);
    background-position: -408px -26px;
    height: 24px;
    width: 24px;
    display: inline-block;
}
.react .save {
     background-image: url(https://goo.gl/NLUdLH);
    background-repeat: no-repeat;
    background-position: -104px -389px;
    height: 24px;
    width: 24px;
    display: inline-block;
}
.caption {
    color: #585858;
    font-size: 13px;
    margin: 16px 0;
}
.caption a {
    margin-right: .3em;
    font-weight: 600;
}
.comment-section {
    position: relative;
    border-top: 1px solid #efefef;
    padding: 26px 26px 26px 0;
    margin-top: 4px;
    overflow: hidden
}
#cmnt {
    outline: none;
    overflow-x: scroll;
    padding: 0;
    background: none;
    border: none;
    color: #262626;
    width: 100%;
    height: 18px;
    max-height: 80px;
    resize: none;
}
.dot02 {
    position: absolute;
    right: 0;
    top: 50%;
    margin-top: -8px;
    cursor: pointer;
    background-image: url(https://goo.gl/NLUdLH);
    background-repeat: no-repeat;
    background-position: -434px -345px;
    height: 16px;
    width: 16px;
}
.footer-cont {
    font-size: 12px;
    font-weight: 600;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    padding: 10px;
    margin: 0 auto;
}
@media only screen and (max-width: 845px) {
    .footer-cont {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .footer-cont ul {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        -ms-flex-flow: wrap;
        flex-flow: wrap;
    }
    .footer-cont ul li {
        margin-bottom: 8px;
    }
}
.footer-cont ul {
    padding: 0;
    margin: 0;
}
.footer-cont ul li {
    display: inline-block;
    list-style: none;
    margin-right: 16px;
}
.footer-cont ul li:last-child {
    margin-right: 0;
}
.footer-cont ul li a {
    color: #003569;
}
.footer-cont span {
    color: #999;
}
.list{
    position: fixed;
    background: rgba(255, 255, 255, 0.85);
    position: fixed;
    bottom: 5em;
    right: 15px;
    border: solid 1px #e4e3e3;
    border-radius: 3px;
    line-height: 1;
    z-index: 50000;
    -webkit-transition: all 0.3s cubic-bezier(0.18, 0.89, 0.22, 1.28);
    -o-transition: all 0.3s cubic-bezier(0.18, 0.89, 0.22, 1.28);    
   transition: all 0.3s cubic-bezier(0.18, 0.89, 0.22, 1.28);
    opacity: 0;
    border-radius: 4px;
    -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1), 0 0 56px rgba(0, 0, 0, 0.075);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1), 0 0 56px rgba(0, 0, 0, 0.075);
    text-align: center;
    transform: rotate(-45deg) scale(.5) translate3d(-133px, -80px, 0px)
}
.list:hover{
     background: #fff;
}
.list ul {
    padding: 0;
    margin: 0;
    list-style: none;
    position: relative
}
.list ul:before {
    bottom: -15px;
    border: 11px solid #e4e3e3;
    content: " ";
    position: absolute;
    right: 3%;
    margin-left: -10px;
    border-top-style: solid;
    border-bottom: none;
    border-left-color: transparent;
    border-right-color: transparent;
} 
.list ul:after {
    bottom: -13.4px;
    border: 10px solid white;
    content: " ";
    position: absolute;
    right: 3.5%;
    border-top-style: solid;
    border-bottom: none;
    border-left-color: transparent;
    border-right-color: transparent;
}
.list ul li:first-child {

    border-bottom: 1px solid #f0f0f0;
    margin-bottom: 10px;
        
}
.list ul li:first-child a{
    padding: 11px 10px;
}
.list ul li a {
    padding: 10px 68px 10px 13px;
    font-size: 14px;
    margin: 3px 0;
    display: block;
    text-align: left;
    -webkit-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}
.list ul li a:hover{
    background:  #8a3ab9;
    color: white;
}
.list li a img
{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    vertical-align: middle;
    margin: -1px 5px 0 0;
    display: inline;
}
.list li:last-child{
    border-top: 1px solid #f0f0f0;
    margin-top: 10px;
}
.list-order{
        -webkit-transition: .2s cubic-bezier(0.45, 0.5, 0, 1.51);
        -o-transition: .2s cubic-bezier(0.45, 0.5, 0, 1.51);
        transition: .2s cubic-bezier(0.45, 0.5, 0, 1.51);
}
.ba{
    -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
            transform: rotate(90deg);
}
.animate{
-webkit-transform: rotate(0deg) scale(1) translate3d(0px, 0px, 0px);
        transform: rotate(0deg) scale(1) translate3d(0px, 0px, 0px);
opacity: 1;
}

</style>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class='lil-bar'>
        <div class='bar-cont'>
            <a href='#' role="button"><i class="fa fa-user-plus"></i></a>
            <a href='#' onclick='return false;' class='list-order' role="button"><i class="fa fa-ellipsis-h"></i></a>
    </div>
    </div>
 <div class="list">
    <ul>
        <li><a href="https://goo.gl/TChSJ4" target='_blank'><img src="https://goo.gl/aVijkX" class="avatar avatar-50">uncle_oreo</a></li>
        <li><a href='#'>Log in</a></li>
        <li><a href='#'>Sign up</a></li>
        <li><a href='#'>Report this user</a></li>
        <li class='collapse'><a href='#'>Collapse the bar</a></li>
        </ul>
    </div>
<section>
  <div class= 'insta fade-scroll'>
    <div class='top-insta'>
      <a href='https://goo.gl/Y9YWLo' target='_blank'><img src='https://goo.gl/rN1DcT'></a>
      <a href='https://goo.gl/Y9YWLo' target='_blank' class='user'>uncle_oreo
</a>
      <span class= 'dot'></span>
    </div>
    <div class='post'>
        <div class="overlay">
        <span></span>
        </div>
      <img src='https://goo.gl/ZUpXiB' >
 </div>
    <div class='footer'>
      
      <div class='react'>
        <a href='#' role='button'><span class='love'></span></a>
        <a href='#' role='button'><span class='comment'></span></a>
        <a href='#' role='button'><span class='save'></span></a>
        
      </div>
      
      <div class='caption'>
        <a href='#'>uncle_oreo</a><span>Done Safe and Sound</span>
      </div>
      
      <div class='comment-section'>
        <input type='text' id='cmnt' placeholder='Add a comment...'>
        <span class='dot02'></span>
      </div>
        
    </div> <!-- end Footer -->
    
  </div> <!-- end Insta -->
  <div class="a1 fade-scroll"></div>
  <div class="a1 fade-scroll"></div>
  <div class="a1 fade-scroll"></div>
  <div class="a1 fade-scroll"></div>
  <div class="a1 fade-scroll"></div>
</section> <!-- end section -->
    <footer>
    <div class="footer-cont">
        <ul>
         <li><a href='#'>About us</a></li>
         <li><a href='#'>Support</a></li>
         <li><a href='#'>Blog</a></li>
         <li><a href='#'>Press</a></li>
         <li><a href='#'>Jobs</a></li>
         <li><a href='#'>Privacy</a></li>
         <li><a href='#'>Terms</a></li>
         <li><a href='#'>Directory</a></li>
         <li><a href='#' onclick='return false;'>Language</a></li>
        </ul>
        <span class='copyright'>&copy; 2017 INSTAGRAM</span>
        </div>
    </footer>
</body>
</html>