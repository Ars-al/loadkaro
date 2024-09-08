<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>

    <link rel="stylesheet" href="{{ asset('assets/css/custom.css') }}">

    <title>Home</title>
</head>

<style>
    .form_div input {
        border: none;
        border-bottom: 1px solid black;
        border-radius: 0;
        box-shadow: none;
    }

    .form_div input:focus-visible {
        outline: none;
    }

    .cus_li button {
        border-top-left-radius: 50px !important;
        border-bottom-left-radius: 50px;
        width: 100%;
    }

    .cus_li_2 button {
        border-top-right-radius: 50px !important;
        border-bottom-right-radius: 50px !important;
        width: 100% !important;
    }

    .custom_li .nav-tabs .nav-item.show .nav-link,
    .nav-tabs .nav-link.active {
        background-color: #45C300;
        border-color: var(--bs-nav-tabs-link-active-border-color);
        color: white;
        width: 100%;
    }

    .custom_li .nav-tabs .nav-link {
        color: black;
    }

    .dis {
        background-color: #E7CDE8;
        padding: 12px;
        border-radius: 10px;
    }

    .form_border {
        border: 1px solid #E7CDE8;
        border-radius: 12px;
        padding: 30px 40px;
        background: white;
    }

    .sec_login {
        background-image: url(./bg-cus.PNG);
        background-position: center;
        background-size: cover;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    }

    .form-floating {
        position: relative;
    }

    .form-floating label {
        position: absolute;
        top: 15px;
        left: 0;
        font-size: 16px;
        color: #999;
        transition: all 0.2s ease;
        pointer-events: none;
        padding: 0 5px;
    }

    .form-floating .form-control {
        border: none;
        border-bottom: 1px solid #E7CDE8;
        border-radius: 0;
        box-shadow: none;
    }

    .form-floating .form-control:focus {
        border-bottom: 2px solid #7D009A;
        box-shadow: none;
    }

    .form-floating .form-control:focus+label,
    .form-floating .form-control:not(:placeholder-shown)+label {
        top: 0px;
        left: 0;
        font-size: 16px;
        color: #7D009A;
    }

    .form-floating .form-control::placeholder {
        color: transparent;
    }
</style>

<body>

    <section class="sec_login position-relative">

        <div class="container-fluid pt-3">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                Login
            </button>
        </div>

        <div class="container pt-5 pb-5">
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-5">
                    <div class="">
                        <img src="{{ asset('assets/img/globe.png') }}" class="img-fluid" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form_border">
                        <div class="d-flex justify-content-center">
                            <img src="{{ asset('assets/img/non.png') }}" alt="">
                        </div>

                        <div class="d-flex justify-content-center align-items-center gap-5 mt-4">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="type" id="inlineRadio2"
                                    value="Full" checked>
                                <label class="form-check-label" for="inlineRadio2">Full Load</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="type" id="inlineRadio1"
                                    value="Part">
                                <label class="form-check-label" for="inlineRadio1">Part Load</label>
                            </div>
                        </div>

                        {{-- full load --}}
                        <div class="mt-4 full_load">
                            <div class="">
                                <h4>Truck Request Details</h4>
                            </div>

                            <form action="{{ route('request.submit') }}" method="POST" class="mt-3">
                                @csrf
                                <div class="row">
                                    <div class="form-group col-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" name="origin" class="form-control floating-input" id="origin" placeholder="Enter Origin" required>
                                            <label for="origin">Origin</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" name="destination" class="form-control floating-input" id="destination" placeholder="Enter Destination" required>
                                            <label for="destination">Destination</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-6">
                                        <div class="form-floating">
                                            <input type="text" name="material" class="form-control floating-input" id="material" placeholder="Enter Material" required>
                                            <label for="material">Material</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-6">
                                        <div class="form-floating">
                                            <input type="text" name="weight" class="form-control floating-input" id="weight" placeholder="Enter Weight" required>
                                            <label for="weight">Weight</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="form-group col-6">
                                        <div class="form-floating mb-3">
                                            <select name="type" class="form-control floating-input" id="type" required>
                                                <option value="" disabled selected>Select Type</option>
                                                <option value="Open Body">Open Body</option>
                                                <option value="Closed Body">Closed Body</option>
                                                <option value="Refrigerated">Refrigerated</option>
                                            </select>
                                            <label for="type">Truck Type</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-6">
                                        <div class="form-floating mb-3">
                                            <select name="quantity" class="form-control floating-input" id="quantity" required>
                                                <option value="" disabled selected>Select</option>
                                                @for ($i = 1; $i <= 10; $i++)
                                                    <option value="{{ $i }}">{{ $i }}</option>
                                                @endfor
                                            </select>
                                            <label for="quantity">No. of Trucks</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="form-group col-6">
                                        <div class="form-floating mb-3">
                                            <input type="date" name="schedule_date" class="form-control floating-input" id="schedule_date" required>
                                            <label for="schedule_date">Schedule Date</label>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Request</button>
                            </form>

                        </div>

                        {{-- part load --}}
                        <div class="mt-4 part_load">
                            <div class="">
                                <h4>Truck Request Details</h4>
                            </div>

                            <form action="{{ route('request.submit.part') }}" method="POST" class="mt-3">
                                @csrf
                                <div class="row">
                                    <div class="form-floating mb-3 col-6">
                                        <input type="text" name="origin" class="form-control floating-input"
                                            id="origin" placeholder="Enter Origin" required>
                                        <label for="origin">Origin</label>
                                    </div>
                                    <div class="form-floating mb-3 col-6">
                                        <input type="text" name="destination" class="form-control floating-input"
                                            id="destination" placeholder="Enter Destination" required>
                                        <label for="destination">Destination</label>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="form-floating mb-3 col-6">
                                        <input type="text" name="source_pin" class="form-control floating-input"
                                            id="source_pin" placeholder="Soucre Pin Code" required>
                                        <label for="source_pin">Soucre Pin Code</label>
                                    </div>
                                    <div class="form-floating mb-3 col-6">
                                        <input type="text" name="destination_pin"
                                            class="form-control floating-input" placeholder="Destination Pin Code"
                                            id="destination_pin" required>
                                        <label for="destination_pin">Destination Pin Code</label>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="form-floating mb-3 col-6">
                                        <select name="pickup_type" class="form-control floating-input"
                                            id="pickup_type">
                                            <option selected>Select</option>
                                            <option value="Door to Door Delivery">Door to Door Delivery</option>
                                            <option value="Bike Delivery">Bike Delivery</option>
                                            <option value="Hostel/PG/Campus To Home">Hostel/PG/Campus To Home</option>
                                            <option value="Easy To Move">Easy To Move</option>
                                            <option value="Soldier Material Transportation">Soldier Material
                                                Transportation</option>
                                            <option value="General">General</option>
                                        </select>
                                        <label for="pickup_type">Pickup Type</label>
                                    </div>
                                    {{-- <div class="form-floating mb-3 col-6">
                                        <select name="material" class="form-control floating-input" id="material">
                                            <option selected>Select </option>
                                            <option value="Open Body">Books</option>
                                            <option value="Closed Body">Commodity (Ex.Almond,Cashew Nut,Black Pepper Whole</option>
                                            <option value="Refregerated">Excess Personal Baggage</option>
                                            <option value="Refregerated">Medicines</option>
                                            <option value="Refregerated">Other</option>
                                            <option value="Refregerated">Ready made Garments</option>
                                            <option value="Refregerated">Seeds and Fertilizers</option>
                                        </select>
                                        <label for="material">Material</label>
                                    </div> --}}
                                    <div class="form-floating col-6">
                                        <input type="text" name="material" class="form-control floating-input"
                                            id="material" placeholder="Enter Material" required>
                                        <label for="material">Material</label>
                                    </div>

                                </div>
                                <div class="row mt-3">
                                    <div class="form-floating col-6">
                                        <input type="text" name="weight" class="form-control floating-input"
                                            id="weight" placeholder="Enter Weight" required>
                                        <label for="weight">Weight</label>
                                    </div>
                                    <div class="form-floating mb-3 col-6">
                                        <input type="date" name="pickup_date" class="form-control floating-input"
                                            id="pickup_date" required>
                                        <label for="pickup_date">Pickup Date</label>
                                    </div>

                                </div>
                                {{-- <div class="form-floating mb-3">
                                    <div class="form-floating">
                                        <input type="text" name="weight" class="form-control floating-input"
                                            id="weight" placeholder="Enter Weight" required>
                                        <label for="weight">Weight</label>
                                    </div>
                                </div> --}}
                                {{-- <div class="row mt-3">
                                    <div class="form-floating mb-3 col-6">
                                        <input type="text" name="quantity" class="form-control floating-input"
                                            id="quantity" placeholder="Enter Quantity" required>
                                        <label for="quantity">Quantity</label>
                                    </div>
                                    <div class="form-floating mb-3 col-6">
                                        <input type="date" name="schedule_date"
                                            class="form-control floating-input" id="schedule_date" required>
                                        <label for="schedule_date">Schedule Date</label>
                                    </div>
                                </div> --}}


                                <button type="submit" class="btn btn-primary">Request</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Login as</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <p>Select your login type:</p>
                    <div class="d-flex justify-content-center gap-4">
                        <a href="{{ route('customer.login') }}" class="btn btn-primary">Customer</a>
                        <a href="{{ route('transporter.login') }}" class="btn btn-primary">Transporter</a>
                    </div>
                </div>
                <div class="modal-footer">
                    <!-- Optional: You can add additional footer buttons if needed -->
                </div>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function() {

            $(".part_load").hide();
            $(".full_load").hide();

            var type = $(".form-check-input:checked").val();

            if (type == "Part") {
                $(".part_load").show();
                $(".full_load").hide();
            }
            if (type == "Full") {
                $(".full_load").show();
                $(".part_load").hide();
            }

        })
        $(document).ready(function() {
            $(".form-check-input").change(function() {

                var type = $(this).val();

                if (type == "Part") {
                    $(".part_load").show();
                    $(".full_load").hide();
                }
                if (type == "Full") {
                    $(".full_load").show();
                    $(".part_load").hide();
                }

            })
        })
    </script>



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0q+a31S9+jgVTLNmo/1LmCGKtEjJvGd1Wtx2V9aV+4HGjqzNR4vWVw16fo6ffJnc" crossorigin="anonymous">
    </script>
</body>

</html>
