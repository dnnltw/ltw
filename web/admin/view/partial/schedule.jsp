<%-- 
    Document   : schedule
    Created on : Dec 3, 2017, 1:04:50 AM
    Author     : ducvu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- /main -->
<div class="container">
    <!-- /breadcrumb -->
    <nav aria-label="breadcrumb" role="navigation">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Schedule</li>
        </ol>
    </nav>


    <div class="container-fluid">
        <div class="row">
            <!-- col-3  add list-->
            <div class="col-md-2">
                <ul class="list-group">
                    <li class="list-group-item" >
                        <a data-toggle="collapse" href=".multi-collapse" aria-expanded="false" aria-controls="list add">List Schedule</a>
                    </li>
                    <!-- <li class="list-group-item" >
                            <a data-toggle="collapse"  href="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Add</a>
                    </li> -->
                    <li class="list-group-item">
                        <a data-toggle="collapse" href=".multi-collapse" aria-expanded="false" aria-controls="list add">Add Schedule</a>
                    </li>
                </ul>
            </div>

            <!-- col-9 -->
            <div class="col-md-10">
                <div class="card">
                    <div class="card-body">
                        <!-- list sale-->
                        <div class="collapse multi-collapse show" id="list">
                            <h5>List Sale</h5>
                            <hr>
                            <table id="example" class="table table-striped table-bordered" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#ID</th>
                                        <th>Film</th>
                                        <th>Datetime</th>
                                        <th>Room</th>
                                        <th>Sale</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Film1</td>
                                        <td>2011/04/25 00:00:00</td>
                                        <td>1</td>
                                        <td>ABC</td>
                                        <td>
                                            <a href="" data-toggle="modal" data-target="#edit1">Edit</a> | 
                                            <a href="#" onclick="return window.confirm('Are you sure!')">Delete</a>
                                        </td>
                                        <!-- Modal edit-->
                                <div class="modal fade" id="edit1" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h5>Edit Schedule</h5>
                                                <hr>

                                                <form class="container" action="#" method="post" id="needs-validation1">
                                                    <div class="film" data-spy="scroll" data-offset="0" style="height: 275px; overflow-x: hidden; overflow-y: scroll;">
                                                        <!-- /film  -->
                                                        <div class="col-md-3">
                                                            <div class="card">
                                                                <img class="card-img-top" src="admin/download.svg" alt="Card image cap">
                                                                <div class="card-block text-left mt-2">
                                                                    <label class="custom-control custom-radio">
                                                                        <input id="film" name="film" type="radio" class="custom-control-input" required>
                                                                        <span class="custom-control-indicator"></span>
                                                                        <span class="custom-control-description">Name Film</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mb-3">
                                                            <label for="date">Date</label>
                                                            <input type="date" class="form-control" id="date" name="date" placeholder="Time end" required>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid Date
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 mb-3">
                                                            <label for="time">Time</label>
                                                            <input type="time" class="form-control" id="time" name="time" placeholder="Time" required>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid Time.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mb-3">
                                                            <label for="price">Price</label>
                                                            <div class="input-group">
                                                                <input type="number" class="form-control" id="price" name="price" placeholder="number" aria-label="Amount (to the nearest VND)" required>
                                                                <span class="input-group-addon">VND</span>
                                                            </div>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid price.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select d-block my-3" name="room_id" required>
                                                        <option value="">Choose Room</option>
                                                        <option value="1">One</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
                                                    </select>
                                                    <select class="custom-select d-block my-3" name="sale_id">
                                                        <option value="">Choose Sale</option>
                                                        <option value="1">One</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
                                                    </select>
                                                    <button class="btn btn-primary" type="submit">Submit form</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- add sale-->
                        <div class="collapse multi-collapse" id="add">
                            <h5>Add Schedule</h5>
                            <hr>
                            <div class="container">
                                <div class="row">
                                    <ul class="nav nav-tabs" role="tablist">

                                        <li role="presentation" class="nav-item">
                                            <a href="#step1" class="nav-link btn-outline-primary rounded-circle active" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                                                1
                                            </a>
                                        </li>

                                        <li role="presentation" class="nav-item disabled">
                                            <a href="#step2" class="nav-link btn-outline-primary rounded-circle " data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                                                2
                                            </a>
                                        </li>
                                        <li role="presentation" class="nav-item disabled">
                                            <a href="#step3" class="nav-link btn-outline-primary rounded-circle" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                                                3
                                            </a>
                                        </li>
                                    </ul>

                                    <form class="container-fluid mt-3" method="post" action="#" id="needs-validation" novalidate>
                                        <div class="tab-content">
                                            <div class="tab-pane active" role="tabpanel" id="step1">
                                                <!-- step 1 select film -->
                                                <h5>Step 1: Select a moive to schedule</h5>
                                                <div class="container">
                                                    <div class="film" data-spy="scroll" data-offset="0" style="height: 350px; overflow-x: hidden; overflow-y: scroll;">
                                                        <!-- /film  -->
                                                        <div class="col-md-3">
                                                            <div class="card">
                                                                <img class="card-img-top" src="admin/download.svg" alt="Card image cap">
                                                                <div class="card-block text-left mt-2">
                                                                    <label class="custom-control custom-radio">
                                                                        <input id="film" name="film" type="radio" class="custom-control-input" required>
                                                                        <span class="custom-control-indicator"></span>
                                                                        <span class="custom-control-description">Name Film</span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <button type="button" class="btn btn-xs btn-primary mt-3 next-step">Save and continue</button>
                                            </div>
                                            <div class="tab-pane" role="tabpanel" id="step2">
                                                <!-- step 2 choose time-->
                                                <h5>Step 2: Select room, time, price </h5>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="date">Date</label>
                                                        <input type="date" class="form-control" id="date" name="date" placeholder="Time end" required>
                                                        <div class="invalid-feedback">
                                                            Please provide a valid Date
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="time">Time</label>
                                                        <input type="time" class="form-control" id="time" name="time" placeholder="Time" required>
                                                        <div class="invalid-feedback">
                                                            Please provide a valid Time.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="price">Price</label>
                                                        <div class="input-group">
                                                            <input type="number" class="form-control" id="price" name="price" placeholder="number" aria-label="Amount (to the nearest VND)" required>
                                                            <span class="input-group-addon">VND</span>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Please provide a valid price.
                                                        </div>
                                                    </div>
                                                </div>
                                                <select class="custom-select d-block my-3" name="room_id" required>
                                                    <option value="">Choose Room</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                                <select class="custom-select d-block my-3" name="sale_id">
                                                    <option value="">Choose Sale</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                                <button type="button" class="btn btn-default prev-step">Previous</button>
                                                <button type="button" class="btn btn-primary next-step">Save and continue</button>
                                            </div>
                                            <div class="tab-pane" role="tabpanel" id="step3">
                                                <h5>Step 3: Submit</h5>
                                                <p>You have successfully completed all steps.</p>
                                                <button type="button" class="btn btn-default prev-step">Previous</button>
                                                <button type="submit" class="btn btn-success">Submit</button>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
