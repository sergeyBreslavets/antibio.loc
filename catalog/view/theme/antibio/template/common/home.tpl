<?php echo $header; ?>
<!-- Optional header components (ex: slider) -->
    <div class="pg-opt hidden">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <h2>Blog</h2>
                </div>
                <div class="col-xs-6">
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Blog</a></li>
                        <li class="active">Large grid</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
  <?php echo $content_top; ?>
  <!-- MAIN CONTENT -->
  <section class="slice bg-white bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div id="homepageCarousel" class="carousel carousel-1 slide" data-ride="carousel">
                            <div class="carousel-inner">
                                  
                                <div class="item item-dark active">
                                    <img src="images/prv/magazine/magazine-4.jpg" alt="">
                                    <!-- Carousel caption -->
                                    <div class="caption-bottom">
                                        <span class="title c-white">Приветствуем вас на сайте образовательного проекта.</span>
                                        <span class="subtitle"> Зарегистрируйтесь и вы сможете пройти дистанционную часть проекта, собрать баллы для сертификата.</span>
                                    </div>
                                </div> 
                                
                                <div class="item item-light">
                                    <img src="images/prv/magazine/magazine-2.jpg" alt="" class="img-responsive">
                                    <!-- Carousel caption -->
                                    <div class="caption-bottom">
                                        <span class="title c-white">Больше тестовое название для баннера</span>
                                        <span class="subtitle c-white">A complete website template which can be perfectly adapted if you're a school, college or another public institution.</span>
                                    </div>
                                </div>       
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#homepageCarousel" data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right carousel-control" href="#homepageCarousel" data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>     
                        </div>
                    </div>
                    <div class="col-md-4">
                      
                        <div class="wp-block mb-20">
                          <a href="">
                            <img src="images/prv/magazine/magazine-small-4.jpg" class="img-responsive" alt="">
                            <!-- Caption -->
                            <div class="caption-bottom">
                                <span class="title c-white">Появился новый тест</span>
                                <span class="subtitle c-white">Laoreet dolore magna aliquam erat are esrseiiqetuer ipisci.</span>
                            </div>
                          </a>
                        </div>
                      
                        <div class="wp-block no-margin">
                          <a href="">
                            <img src="images/prv/magazine/magazine-small-7.jpg" class="img-responsive" alt="">
                            <!-- Caption -->
                            <div class="caption-bottom">
                                <span class="title c-white">Открылась новая ссесия мероприятий</span>
                                <span class="subtitle c-white">Laoreet dolore magna aliquam erat are esrseiiqetuer ipisci.</span>
                            </div>
                          </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <section class="slice bg-white">
      <div class="wp-section">
          <div class="container">
              <div class="row">
                <!-- CONTENT -->
                <?php if ($column_left) { ?>
                  <div class="col-sm-3">
                    <div class="sidebar">
                      <?php echo $column_left; ?>
                    </div>
                  </div>
                <?php } ?>

                <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-8'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?>">
                   <!-- Style 1 -->
                        <div class="section-title-wr">
                            <h3 class="section-title left"><span>Последнии лекции и материалы</span></h3>
                         
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="wp-block article grid">
                                    <div class="article-image">
                                        <a href=""> <img src="images/prv/magazine/magazine-small-1.jpg" alt=""></a>
                                        <h4 class="image-title base">Обязательно к прочтению</h4>
                                    </div>
                                    <span class="article-category">Название категории</span>
                                    <h3 class="title">
                                        <a href="">Название материала</a>
                                    </h3>
                                    <p>
                                    Laoreet dolore magna aliquam erat are esrseiiqetuer ipisci nibh euismod is tincidunt ut amat volutpat.Ut wisi enim ad minim ipiscing elit, sed diam nonummy nibh euismod is tincidunt utilin malins noineq laore.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="wp-block article grid">
                                    <div class="article-image">
                                        <a href=""><img src="images/prv/magazine/magazine-small-2.jpg" alt=""></a>
                                        <h4 class="image-title base">Рекомендуем</h4>
                                    </div>
                                    <span class="article-category">Название категории</span>
                                    <h3 class="title">
                                        <a href="">Новое классное название материала</a>
                                    </h3>
                                    <p>
                                    Laoreet dolore magna aliquam erat are esrseiiqetuer ipisci nibh euismod is tincidunt ut amat volutpat.Ut wisi enim ad minim ipiscing elit, sed diam nonummy nibh euismod is tincidunt utilin malins noineq laore.
                                    </p>
                                </div>
                            </div>
                        </div>
                  <?php echo $content_bottom; ?>
                </div>

                <?php if ($column_right) { ?>
                  <div class="col-sm-4 ">
                    <!-- SIDEBAR -->
                    <div class="sidebar">
                      <?php echo $column_right; ?>
                    </div>
                  </div>
                <?php } ?>
              </div>
          </div>
      </div>
  </section>
<?php echo $footer; ?>