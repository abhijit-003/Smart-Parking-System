<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Dashboard
      <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->

    <?php if ($is_admin == true) : ?>
      <div class="row">

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3><?php echo $total_availableslots; ?>/<?php echo $total_slots; ?></h3>

              <p>Available Parking Slots</p>
            </div>
            <div class="icon">
              <i class="ion ion-navigate"></i>
            </div>
            <a href="<?php echo base_url('slots') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $total_parking; ?></h3>

              <p>Total Parking</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-car"></i>
            </div>
            <a href="<?php echo base_url('parking') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?php echo $total_users; ?></h3>

              <p>System Users</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-person"></i>
            </div>
            <a href="<?php echo base_url('users') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-orange">
            <div class="inner">
              <h3>₹<?php echo $total_earning; ?></h3>

              <p>Total Earnings</p>
            </div>
            <div class="icon">
            <!--  <i class="ion ion-social-inr"></i> -->
            </div>
            <a href="<?php echo base_url('parking') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

      </div>
      <!-- /.row -->

      <div class="row">

        <div class="col-lg-3 col-xs-12"></div>

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-blue">
            <div class="inner">
              <h3><?php echo $total_rates; ?></h3>

              <p>Available Parking Rates</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-speedometer-outline"></i>
            </div>
            <a href="<?php echo base_url('rates') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-maroon">
            <div class="inner">
              <h3><?php echo $total_unpaid; ?></h3>

              <p>Pending Payment</p>
            </div>
            <div class="icon">
              <i class="ion ion-load-a"></i>
            </div>
            <a href="<?php echo base_url('parking') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-3 col-xs-12"></div>

      </div>
    <?php endif; ?>



    <?php if ($is_admin == false) : ?>
      <div class="row">

        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3><?php echo $total_availableslots; ?>/<?php echo $total_slots; ?></h3>

              <p>Available Parking Slots</p>
            </div>
            <div class="icon">
              <i class="ion ion-navigate"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->

        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo $total_parking; ?></h3>

              <p>Total Parking</p>
            </div>
            <div class="icon">
              <i class="ion ion-android-car"></i>
            </div>
          </div>
        </div>


        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-orange">
            <div class="inner">
              <h3>₹<?php echo $total_earning; ?></h3>

              <p>Total Earnings</p>
            </div>
            <div class="icon">
              <i class="ion ion-social-us"></i>
            </div>
          </div>
        </div>

      </div>
      <!-- /.row -->

    <?php endif; ?>


  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
  $(document).ready(function() {
    $("#dashboardSideNav").addClass('active');
  });
</script>