<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        
        <li id="dashboardSideNav">
          <a href="<?php echo base_url('dashboard') ?>">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>


        <?php if(in_array('createCategory', $user_permission) || in_array('updateCategory', $user_permission) || in_array('viewCategory', $user_permission) || in_array('deleteCategory', $user_permission)): ?>
        <li class="treeview" id="categorySideTree">
          <a href="#">
            <i class="fa fa-car"></i>
            <span>Vehicle Category</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if(in_array('createCategory', $user_permission)): ?>
            <li id="createCategorySideTree"><a href="<?php echo base_url('category/create') ?>"><i class="fa fa-arrow-circle-right"></i> Add Category</a></li>
            <?php endif; ?>
            <?php if(in_array('updateCategory', $user_permission) || in_array('viewCategory', $user_permission) || in_array('deleteCategory', $user_permission)): ?>
            <li id="manageCategorySideTree"><a href="<?php echo base_url('category') ?>"><i class="fa fa-arrow-circle-right"></i> Manage Category</a></li>
            <?php endif; ?>
          </ul>
        </li>
      <?php endif; ?>


      <?php if(in_array('createSlots', $user_permission) || in_array('updateSlots', $user_permission) || in_array('viewSlots', $user_permission) || in_array('deleteSlots', $user_permission)): ?>
        <li class="treeview" id="slotsSideTree">
          <a href="#">
            <i class="fa fa-list"></i>
            <span>Parking Slot</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if(in_array('createSlots', $user_permission)): ?>
              <li id="createSlotsSideTree"><a href="<?php echo base_url('slots/create') ?>"><i class="fa fa-arrow-circle-right"></i> Add Slot</a></li>
            <?php endif; ?>
            <?php if(in_array('updateSlots', $user_permission) || in_array('viewSlots', $user_permission) || in_array('deleteSlots', $user_permission)): ?>
            <li id="manageSlotsSideTree"><a href="<?php echo base_url('slots') ?>"><i class="fa fa-arrow-circle-right"></i> Manage Slot</a></li>
            <?php endif; ?>
          </ul>
        </li>
      <?php endif; ?>

      <?php if(in_array('createRates', $user_permission) || in_array('updateRates', $user_permission) || in_array('viewRates', $user_permission) || in_array('deleteRates', $user_permission)): ?>
        <li class="treeview" id="ratesSideTree">
          <a href="#">
            <i class="fa fa-usd"></i>
            <span>Rates</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if(in_array('createRates', $user_permission)): ?>
            <li id="createRatesSideTree"><a href="<?php echo base_url('rates/create') ?>"><i class="fa fa-arrow-circle-right"></i> Add Rate</a></li>
            <?php endif; ?>
            <?php if(in_array('updateRates', $user_permission) || in_array('viewRates', $user_permission) || in_array('deleteRates', $user_permission)): ?>
            <li id="manageRatesSideTree"><a href="<?php echo base_url('rates') ?>"><i class="fa fa-arrow-circle-right"></i> Rates</a></li>
            <?php endif; ?>
          </ul>
        </li>
      <?php endif; ?>

      <?php if(in_array('createParking', $user_permission) || in_array('updateParking', $user_permission) || in_array('viewParking', $user_permission) || in_array('deleteParking', $user_permission)): ?>
        <li class="treeview" id="parkingSideTree">
          <a href="#">
            <i class="fa fa-product-hunt"></i>
            <span>Parkings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if(in_array('createParking', $user_permission)): ?>
              <li id="createParkingSideTree"><a href="<?php echo base_url('parking/create') ?>"><i class="fa fa-arrow-circle-right"></i> Book Parking</a></li>
            <?php endif; ?>
            <?php if(in_array('updateParking', $user_permission) || in_array('viewParking', $user_permission) || in_array('deleteParking', $user_permission)): ?>
              <li id="manageParkingSideTree"><a href="<?php echo base_url('parking') ?>"><i class="fa fa-arrow-circle-right"></i> View Parking</a></li>
            <?php endif; ?>
          </ul>
        </li>
      <?php endif; ?>

      <?php if(in_array('viewReports', $user_permission)): ?>
        <li id="reportSideTree"><a href="<?php echo base_url('reports/') ?>"><i class="glyphicon glyphicon-stats"></i> <span>View Reports</span></a></li>
      <?php endif; ?> 

      <?php if(in_array('updateCompany', $user_permission)): ?>
        <li id="companySideTree"><a href="<?php echo base_url('company/') ?>"><i class="fa fa-building"></i> <span>Company Info</span></a></li>
      <?php endif; ?>


      <?php if(in_array('createGroup', $user_permission) || in_array('updateGroup', $user_permission) || in_array('viewGroup', $user_permission) || in_array('deleteGroup', $user_permission)): ?>
            <li class="treeview" id="groupSideTree">
              <a href="#">
                <i class="fa fa-th"></i>
                <span>Access Groups</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <?php if(in_array('createGroup', $user_permission)): ?>
                  <li id="createGroupSideTree"><a href="<?php echo base_url('groups/create') ?>"><i class="fa fa-arrow-circle-right"></i> Add Group</a></li>
                <?php endif; ?>
                <?php if(in_array('updateGroup', $user_permission) || in_array('viewGroup', $user_permission) || in_array('deleteGroup', $user_permission)): ?>
                <li id="manageGroupSideTree"><a href="<?php echo base_url('groups') ?>"><i class="fa fa-arrow-circle-right"></i>Groups</a></li>
                <?php endif; ?>
              </ul>
            </li>
          <?php endif; ?>


          <?php if(in_array('createUser', $user_permission) || in_array('updateUser', $user_permission) || in_array('viewUser', $user_permission) || in_array('deleteUser', $user_permission)): ?>
          <li class="treeview" id="userSideTree">
            <a href="#">
              <i class="fa fa-user-secret"></i>
              <span>System Users</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <?php if(in_array('createUser', $user_permission)): ?>
              <li id="createUserSideTree"><a href="<?php echo base_url('users/create') ?>"><i class="fa fa-arrow-circle-right"></i> Add User</a></li>
              <?php endif; ?>
    
              <?php if(in_array('updateUser', $user_permission) || in_array('viewUser', $user_permission) || in_array('deleteUser', $user_permission)): ?>
              <li id="manageUserSideTree"><a href="<?php echo base_url('users') ?>"><i class="fa fa-arrow-circle-right"></i>  Users</a></li>
            <?php endif; ?>
            </ul>
          </li>
          <?php endif; ?>


      <?php if(in_array('viewProfile', $user_permission)): ?>
        <li id="profileSideTree"><a href="<?php echo base_url('users/profile/') ?>"><i class="fa fa-user-circle"></i> <span>My Profile</span></a></li>
      <?php endif; ?>
      <?php if(in_array('updateSetting', $user_permission)): ?>
        <li id="settingSideTree"><a href="<?php echo base_url('users/setting/') ?>"><i class="fa fa-cogs"></i> <span>Settings</span></a></li>
      <?php endif; ?>
        <li><a href="<?php echo base_url('auth/logout') ?>"><i class="fa fa-power-off"></i> <span>Logout</span></a></li>

      </ul>
    </section>
    <!-- /.sidebar -->
    
  </aside>