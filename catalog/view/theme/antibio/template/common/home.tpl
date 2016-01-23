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
                                <a href="article_ivhd">
                                    <img src="images/prv/magazine/magazine-4.jpg" alt="">
                                    <!-- Carousel caption -->
                                    <div class="caption-bottom">
                                        <span class="title c-white">Рациональная терапия ИВДП. слайд 1</span>
                                        <span class="subtitle"></span>
                                    </div>
                                </a>
                                </div> 
                                <div class="item item-dark">
                                <a href="article_ivhd">
                                    <img src="images/prv/magazine/magazine-4.jpg" alt="">
                                    <!-- Carousel caption -->
                                    <div class="caption-bottom">
                                        <span class="title c-white">Рациональная терапия ИВДП. слайд 2</span>
                                        <span class="subtitle"></span>
                                    </div>
                                </a>
                                </div>      
                            </div>
                               <!-- Left and right controls -->
                              <a class="left carousel-control" href="#homepageCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#homepageCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>

                               
                        </div>
                    </div>
                    <div class="col-md-4">
                      
<!--
                        <div class="wp-block mb-20">
                          <a href="/article2">
                            <img src="images/prv/magazine/magazine-small-4.jpg" class="img-responsive" alt="">

                            <div class="caption-bottom">
                                <span class="title c-white">Антибиотики повышают риск развития аритмии</span>
                                <span class="subtitle c-white"></span>
                            </div>
                          </a>
                        </div>
-->
                        
                            
                            <div class="widget">
                                <form action="" class="sky-form">         
                                    <div id="dpInline"></div>
                                </form> 
                            </div>

                        

                      
                        <div class="wp-block no-margin">
                          <a href="/article1">
                            <img src="images/prv/magazine/magazine-small-7.jpg" class="img-responsive" alt="">
                            <!-- Caption -->
                            <div class="caption-bottom">
                                <span class="title c-white">Прием антибиотиков в младенческом возрасте и риск ожирения</span>
                                <span class="subtitle c-white"></span>
                            </div>
                          </a>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="widget">
                                <form action="" class="sky-form">
                                   <input type="text" id="calendarDateField" style="display: none;">          
                                    <div id="dpInlineBig"></div>
                                </form> 
                            </div>
                            <div class="topics">
                                <div class="row" id="calendarListData">
                                </div>
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
                                        <a href="/article_inhd"> <img src="images/prv/magazine/magazine-small-1.jpg" alt=""></a>
                                        <h4 class="image-title base">Обязательно к прочтению</h4>
                                    </div>
                                    <span class="article-category"></span>
                                    <h3 class="title">
                                        <a href="">Рациональная терапия ИНДП</a>
                                    </h3>
                                    <p>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="wp-block article grid">
                                    <div class="article-image">
                                        <a href="/article_terapia_infekcii"><img src="images/prv/magazine/magazine-small-2.jpg" alt=""></a>
                                        <h4 class="image-title base">Рекомендуем</h4>
                                    </div>
                                    <span class="article-category"></span>
                                    <h3 class="title">
                                        <a href="/article_terapia_infekcii">Рациональная терапия инфекций в урологии и гинекологии</a>
                                    </h3>
                                    <p>
                                    
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