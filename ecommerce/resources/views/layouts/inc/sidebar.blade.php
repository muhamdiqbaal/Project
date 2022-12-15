<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
      -->
      <div class="logo"><a href="#" class="simple-text logo-normal">
          Karyain Shop Admin
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item {{$title === "Dashboard" ? 'active' : ''}}">
            <a class="nav-link" href={{url('dashboard')}}>
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item {{$title === "Categories" || $title === "Edit Categories" ? 'active' : ''}}">
            <a class="nav-link" href="{{ url('categories') }}">
              <i class="material-icons">person</i>
              <p>Kategori</p>
            </a>
          </li>
          <li class="nav-item {{$title === "Add Categories" ? 'active' : ''}}">
            <a class="nav-link" href="{{ url('add-category') }}">
              <i class="material-icons">person</i>
              <p>Tambah Kategori</p>
            </a>
          </li>
          <li class="nav-item {{$title === "Products" || $title === "Products" ? 'active' : ''}}">
            <a class="nav-link" href="{{ url('products') }}">
              <i class="material-icons">person</i>
              <p>Produk</p>
            </a>
          </li>
          <li class="nav-item {{$title === "Add Products" ? 'active' : ''}}">
            <a class="nav-link" href="{{ url('add-products') }}">
              <i class="material-icons">person</i>
              <p>Tambah Produk</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./tables.html">
              <i class="material-icons">content_paste</i>
              <p>Table List</p>
            </a>
          </li>
            </a>
          </li>
        </ul>
      </div>
    </div>
