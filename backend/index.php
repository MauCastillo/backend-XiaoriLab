<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Test DataBase</title>
    <!-- jQuery library -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body>

    <br>
    <div class="container">
        <h1>World Pay </h1>
        <div id="msg" class="alert"></div>
        <br>
        <!--
        <button type="submit" id="add_product" onclick="showAddCenter()" class="btn btn-info">Add Product</button>
        -->

        <form action="" method="POST" id="add_product_form" style="display:none">
            <h3 id="title_form">Add new products </h3>
            <div class="form-group row" style="margin-left: 15%; margin-right: 20%; ">
                <br>
                <label>Product name:</label>
                <input class="form-control" id="productName" type="text" placeholder="Product Name"
                    style="text-transform: capitalize;" required>

                <label> Price:</label>
                <input class="form-control" min="0" id="price" step="0.01" placeholder="1.0"
                    style="text-transform:uppercase;" required>

                <label>Paypal value:</label>
                <input class="form-control" id="paypalValue" type="text" placeholder="Paypal value">

                <label>Session storage:</label>
                <input class="form-control" id="session_storage" type="text" placeholder="Session storage">
	
                <label>Category: e.g. practical or theory </label>
                <input class="form-control" id="category" type="text" placeholder="Category">
				
                <label>Type test: e.g. car, car and trailer, motorbike, etc </label>
                <input class="form-control" id="type_test" type="text" placeholder="Type test">

                <label>Sub type: e.g. module two motorcycle</label>
                <input class="form-control" id="sub_type" type="text" placeholder="Sub type">

                <label>Description:</label>
                <textarea class="form-control" id="description" rows="3"></textarea>
                <br>

                <button id="button_product" type="submit" class="btn btn-success">Save New Product</button>

            </div>

        </form>
        <br>
        <center>
            <br>
            <form id="form_query" class="form-inline md-form form-sm mt-0">
                <i class="fas fa-search" aria-hidden="true"></i>
                <input id="query" class="form-control form-control-sm ml-3 w-75" type="text" placeholder="Search by either productName, type test, subtype or category"
                    aria-label="Search">

                <div class="form-group">
                    <label for="exampleFormControlSelect1">Item number:</label>
                    <select onchange="LoadItemNumber()" id="item_number" class="form-control"
                        id="exampleFormControlSelect1">
                        <option value="10">10</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                    </select>
                </div>
            </form>


        </center>
        <br>
        <div class="pagination" id="pagelabel_first"></div>
        <br>
        <table id="employee_grid" class="table table-hover" width="60%" cellspacing="0">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th data-toggle="modal" data-target="#exampleModal" scope="col">Orden</th>
                    <th scope="col">Date</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price &pound;</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone Number</th>
                    <th scope="col">System Order</th>
                </tr>
            </thead>
            <tbody id="_editable_table">
            </tbody>
        </table>
        <div class="pagination" id="pagelabel_second"></div>
        <br>
        <div class="pagination" id="pageForm"></div>
        <script type="text/javascript">
        /* This script setup redering */
        $('#wrapper').css({
            'min-width': '720px',
            'max-width': '1920px',
            'width': 'auto'
        });
        </script>
    </div>

</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
    integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
    integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="./js/loadInformation.js?v=<?php echo microtime(); ?>"></script>


</html>