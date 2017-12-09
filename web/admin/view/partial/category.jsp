<%-- 
    Document   : category
    Created on : Dec 9, 2017, 8:53:04 PM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <!-- /breadcrumb -->
    <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Category</li>
        </ol>
    </nav>


    <div class="container-fluid">
        <div class="row">
            <!-- col-3  add list-->
            <div class="col-md-2">
                <ul class="list-group">
                    <li class="list-group-item" >
                        <a data-toggle="collapse" href=".multi-collapse" aria-expanded="false" aria-controls="list add">List Category</a>
                    </li>
                    <!-- <li class="list-group-item" >
                            <a data-toggle="collapse"  href="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Add</a>
                    </li> -->
                    <li class="list-group-item">
                        <a data-toggle="collapse" href=".multi-collapse" aria-expanded="false" aria-controls="list add">Add Category</a>
                    </li>
                </ul>
            </div>

            <!-- col-9 -->
            <div class="col-md-10">
                <div class="card">
                    <div class="card-body">
                        <!-- list sale-->
                        <div class="collapse multi-collapse show" id="list">
                            <h5>List Category</h5>
                            <hr>
                            <!--<form action="edit_sale" method="post">-->


                            <table id="example" class="table table-striped table-bordered" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#ID</th>
                                        <th>Name</th>
                                        <th>Number</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>id</td>
                                        <td>name</td>
                                        <td>Number</td>
                                        <td>
                                            <a href="#" data-toggle="modal" data-target="#edit1">Edit</a> 
                                            <!--<a href="#" onclick="return window.confirm('Are you sure!')">Delete</a>-->

                                        </td>

                                        <!-- Modal edit-->


                                <div class="modal fade" id="edit1" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-body">

                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h5>Edit Category</h5>
                                                <hr>

                                                <form class="container" id="needs-validation" novalidate action="" method="post">
                                                    <div class="row">
                                                        <div class="col-md-6 mb-3">
                                                            <input type="hidden" name="idEdit" value="">
                                                            <label for="nameSale">Name Category</label>
                                                            <input type="text" class="form-control" id="nameSale" name="nameEdit" value="" placeholder="name sale" required>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid name Category.
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 mb-3">
                                                            <label for="number">Number</label>
                                                            <div class="input-group">
                                                                <input type="text" class="form-control" id="number" name="numberEdit" placeholder="number" value="" aria-label="Amount % (to the nearest VND)" required>
                                                                <span class="input-group-addon">%</span>
                                                            </div>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid number.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn btn-primary" type="submit">Submit form</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </tr>

                                </tbody>
                            </table>
                            <!--</form>-->
                        </div>
                        <!-- add sale-->
                        <div class="collapse multi-collapse" id="add">
                            <h5>Add Category</h5>
                            <hr>
                            <form class="container" id="needs-validation" novalidate action="" method="post">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="nameSale">Name sale</label>
                                        <input type="text" class="form-control" id="nameSale" name="name" placeholder="name sale" required>
                                        <div class="invalid-feedback">
                                            Please provide a valid name sale.
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="number">Number</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="number" name="number" placeholder="number" aria-label="Amount % (to the nearest VND)" required>
                                            <span class="input-group-addon">%</span>
                                        </div>
                                        <div class="invalid-feedback">
                                            Please provide a valid number.
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit">Submit form</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

