<?php

/**
 * Team:你说的都队,NKU
 * coding by 吴传杰，2013778
 * a view of contact us page
 */

/* @var $this yii\web\View */
/* @var $form yii\bootstrap4\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

$this->title = 'Contact';
?>
<?= Html::cssFile('@web/public/css/style_1.css') ?>
<?= Html::cssFile('@web/css/custom-bs.css') ?>
<?= Html::cssFile('@web/css/main.css') ?>
<?= Html::cssFile('@web/css/style1.css') ?>
<?= Html::cssFile('@web/css/jquery.fancybox.min.css') ?>
<?= Html::cssFile('@web/public/css/font-awesome.min.css') ?>
<?= Html::cssFile('@web/public/fonts/line-icons/style.css') ?>
<?= Html::cssFile('@web/public/fonts/icomoon/style.css') ?>

<?= Html::jsFile('@web/js/contact/jquery.min.js') ?>
<?= Html::jsFile('@web/js/contact/bootstrap.bundle.min.js') ?>
<?= Html::jsFile('@web/js/contact/isotope.pkgd.min.js') ?>
<?= Html::jsFile('@web/js/contact/stickyfill.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.fancybox.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.easing.1.3.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.waypoints.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.animateNumber.min.js') ?>
<?= Html::jsFile('@web/js/contact/custom.js') ?>
<?= Html::jsFile('@web/js/contact/canvas-nest.min.js') ?>

<html lang="en">

<nav id="w0" class="shadow-sm navbar-expand-lg navbar-light bg-light navbar">
  <div class="container">
    <a class="navbar-brand" href="../../web/site/index">R-U War</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#w0-collapse" aria-controls="w0-collapse" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div id="w0-collapse" class="collapse navbar-collapse">
      <ul id="w1" class="navbar-nav ml-auto nav">
        <li class="nav-item"><a class="nav-link" href="../../web/site/index">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/site/about">About</a></li>
        <li class="nav-item"><a class="nav-link " href="../../web/blog/blog">Publish</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/video/index">Video</a></li>
        <li class="nav-item"><a class="nav-link active" href="../../web/site/contact">Contact</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/blogs/index">Blogs</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/site/login">Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  <head>
    <title>Contact Us！</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

  </head>
  <body>
    
  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->


    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="../../../frontend/web/img/aboutus/sq_img_10.jpg" alt="Image" class="img-fluid img-shadow">
            </a>
          </div>
          <div class="col-lg-5 ml-auto">
            <h3 class="section-title-sub text-primary">Who are we?</h3>
            <h2 class="section-title mb-3">我们是谁？</h2>
            <p class="lead">我们是三个来自南开大学的学生。</p>
            <p>我们开发这个网页是为了让人们更加了俄乌战争的相关信息；</br>
              我们收集了俄乌战争的一些基本信息，将其汇总放在了About中。</br>
              我们更制作了相关的博客系统，希望人们能在此分享自己的一些思考或者发布一些恶相关的视频；</br>
              最后，希望人们能通过联系页面将自己的信息及时反馈给我们。</p>
          </div>
        </div>
      </div>
    </section>

    <!-- ABOUT US -->
    <section class="site-section about-us-section">
      <div class="container">

        <div class="row mb-5 pt-0 site-section">
          <div class="col-md-6 align-self-center">
            <h3 class="section-title-sub text-primary">Key Feautures</h3>
            <h2 class="section-title mb-4">网站特点</h2>
            <p class="lead">这是关于俄乌战争的网站。</p>
            <p>我们提供了各种关于俄乌战争的信息，您可以在这里获取国内对于俄乌战争的一些讨论，您也可以分享您对俄乌战争的一些思考和相关的视频，与更多人分享自己的想法。</p>
            <p>同时，如果您对本网站的内容有任何疑问，或者有与俄乌战争有关的一切信息和内容，欢迎通过本页最下方的表格联系我们，您也可以获取我们的联络方式，以便在第一时间找到我们，真诚感谢您的支持！</p>
            <p class="mt-4"><a href="#contactformanchor" class="spepcial_link">跳转到联系表格</a></p>
          </div>
          <div class="col-md-5 ml-auto img-overlap">
            <div class="img-1"><img src="../../../frontend/web/img/aboutus/sq_img_6.jpg" alt="Image" class="img-fluid img-shadow"></div>
            <div class="img-2"><img src="../../../frontend/web/img/aboutus/123456.jpg" alt="Image" class="img-fluid img-shadow"></div>
          </div>
        </div>

        

      </div>
    </section>

    <section class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h3 class="section-title-sub text-primary">Our Team</h3>
            <h2 class="section-title mb-3">小组信息介绍</h2>
          </div>
        </div>

        <div class="row align-items-center block__69944">
         
          <div class="col-lg-4">
            <img src="../../../frontend/web/img/aboutus/person_01.jpg" alt="Image" class="img-fluid mb-4 rounded">

            <h3>吴传杰</h3>
            <p class="text-muted">组长</p>
            <p class="lead">负责home&about&contact界面和后台的设计</p>
            <p>13年Jay粉!<br>喜欢唱、跳、rap、篮球、music(认真.jpg)</br>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
            <div class="social mt-4">
              <a href="https://github.com/Metreacs" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:1487743280@qq.com" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>

          </div>
          <div class="col-lg-4">
            <img src="../../../frontend/web/img/aboutus/person_02.jpg" alt="Image" class="img-fluid mb-4 rounded">
            <h3>谢志颖</h3>
            <p class="text-muted">组员</p>
            <p class="lead">博客数据获取Blogs板块、注册登录页面以及Blogs板块前后台</p>
            <p>体育馆或者图书馆总得有一个是我家</p>
            <div class="social mt-4">
              <a href="https://github.com/MilkyBoat" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:2113302@mail.nankai.edu.cn" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="http://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>
          </div>

          <div class="col-lg-4">
            <img src="../../../frontend/web/img/aboutus/person_03.jpg" alt="Image" class="img-fluid mb-4 rounded">
            <h3>田佳业</h3>
            <p class="text-muted">组员</p>
            <p class="lead">publish&video设计以及服务器部署</p>
            <p>互联网数据库破防</br>
            </p>
            <div class="social mt-4">
              <a href="https://github.com/tenkinoko" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:2013599@mail.nankai.edu.cn" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>
          </div>

        </div>


      </div>
    </section>

    <div class="container">
      <div class="row mb-5">
        <div class="col-12 text-center" data-aos="fade">
          <a name="contactformanchor"></a>
          <h3 class="section-title-sub text-primary">Contact Us</h3>
          <h2 class="section-title mb-3">联系我们</h2>
        </div>
      </div>
      <section class="site-section" id="next-section">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 mb-5 mb-lg-0">
              <form action="#" class="">

                <div class="col-lg-12">
                  <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>
                  <?= $form->field($model, 'firstname') ?> 
                  <?= $form->field($model, 'lastname') ?>
                  <?= $form->field($model, 'sex')->radioList(['1' => 'Male', '0' => 'Female']) ?>
                  <?= $form->field($model, 'wechatid') ?>
                  <?= $form->field($model, 'phone') ?>
                  <?= $form->field($model, 'message')->textarea(['rows' => 7])->hint('Please enter your message') ?>
                  <div class="form-group">
                    <div class="social mt-4">
                      <?= Html::submitButton('Send', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
                    </div>

                  </div>
                </div>


              </form>
            </div>
            <div class="col-lg-5 ml-auto">
              <div class="p-4 mb-3 bg-white">
                <p class="mb-0 font-weight-bold">地址</p>
                <p class="mb-4">中国天津市津南区同砚路38号南开大学津南校区</p>

                <p class="mb-0 font-weight-bold">微博&B站</p>
                <p class="mb-4">南开大学</a></p>

                <p class="mb-0 font-weight-bold">邮箱</p>
                <p class="mb-0"><a href="mailto:1020546@hust.edu.cn">NKU@mail.nankai.edu.cn</a></p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <img src="../../../frontend/web/img/aboutus/jinnan.jpg" alt="Image" class="img-fluid mb-4 rounded"> </a>


              </div>
            </div>
          </div>
        </div>
      </section>


    </div>

    <script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>
</body>

</html>