<style>
	#login{
		visibility:hidden;
		position:fixed;
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
		padding:20px;
	}
	#signup{
		visibility:hidden;
		position:fixed;
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
		padding:20px;
	}
</style>

<div id="signup">
	<div class="container">
		<div class="h-100 row align-items-center">
			<div style="height: 100%" class="w-100 mx-auto">
				<div class="row">
					<div class="col-lg-4 bg-primary d-none d-xl-block">
						<div class="row">
							<div class="col-12">
								<h2 class="h2 text-white mt-4"><b>Signup</b></h2>
								<p class="lead text-white">We do not share your personal details with anyone.</p>
							</div>
							<div class="col-12 p-0 d-none d-lg-block">
								<img class="img-fluid mt-5" src="image2.jpg">
							</div>
						</div>
					</div>
					<div style="background-color: whitesmoke" class="col-lg-8 p-0 d-none d-xl-block">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<div class="row">
							<form action="OperateServlet1?operate=SignUp" method="post">
								<div class="col-12 mt-5 ml-5">
									Enter Email/Mobile number<br>
									<input class="w-100" type='text' name='id' required="required">
								</div>
								<div class="col-12 ml-5 mt-3">
									Set Password<br>
									<input class="w-100" type='password' name='pass'>
								</div>
								<div class="col-12 ml-5 mt-3">
									<input class="w-100 text-white" style="background-color:orange" type='submit' value="SIGNUP">
								</div>
							</form>
							<div class="col-12 ml-5 mt-3">
								<button class=" btn btn-outline-dark" onclick="login()"><b>Existing User? Log in</b></button>
							</div>
							<div class="col-12">
								<p class="text-muted mt-5 ml-5">We no longer support login via Social accounts.
								Please Enter your Email/Mobile number to Login.</p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-4 bg-primary d-none d-xl-none d-lg-block">
						<div class="row">
							<div class="col-12">
								<h2 class="h2 text-white mt-4"><b>Signup</b></h2>
								<p class="lead text-white">We do not share your personal details with anyone.</p>
							</div>
							<div class="col-12 p-0 d-none d-lg-block">
								<img class="img-fluid mt-5" src="image2.jpg">
							</div>
						</div>
					</div>
					<div style="background-color: whitesmoke" class="col-lg-8 p-0 d-none d-xl-none d-lg-block">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<div class="row">
							<form action="OperateServlet1?operate=SignUp" method="post">
								<div class="col-12 mt-5 ml-5">
									Enter Email/Mobile number<br>
									<input class="w-100" type='text' name='id' required="required">
								</div>
								<div class="col-12 ml-5 mt-3">
									Enter Password<br>
									<input class="w-100" type='password' name='pass'>
								</div>
								<div class="col-12 ml-5 mt-3">
									<input class="w-100 text-white" style="background-color:orange" type='submit' value="SIGNUP">
								</div>
							</form>
							<div class="col-12 ml-5 mt-3">
								<button class=" btn btn-outline-dark" onclick="login()"><b>Existing User? Log in</b></button>
							</div>
							<div class="col-12">
								<p class="text-muted mt-5 ml-5">We no longer support login via Social accounts.
								Please Enter your Email/Mobile number to Login.</p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 d-block d-lg-none d-xl-none bg-primary p-0 w-100">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<h2 class="h2 text-white p-2 mt-2 ml-3"><b>Signup</b></h2>
						<p class="lead text-white p-2 ml-3">We do not share your personal details with anyone.</p>
					</div>
					<div class="col-12 d-block d-lg-none d-xl-none bg-white">
						<form action="OperateServlet1?operate=SignUp" method="post">
							<div class="col-12 mt-3">
								Enter Email/Mobile number<br>
								<input class="w-100" type='text' name='id' required="required">
							</div>
							<div class="col-12 mt-3">
								Enter Password<br>
								<input class="w-100" type='password' name='pass'>
							</div>
							<div class="col-12 mt-3">
								<input class="w-100 text-white" style="background-color:orange" type='submit' value="SIGNUP">
							</div>
						</form>
						<div class="col-12 mt-3 mb-5">
							<button class=" btn btn-outline-dark" onclick="login()"><b>Existing User? Log in</b></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		
		
		
<div id="login">
	<div class="container">
		<div class="h-100 row align-items-center">
			<div class="w-100 mx-auto">
				<div class="row">
					<div class="col-lg-4 bg-primary d-none d-xl-block">
						<div class="row">
							<div class="col-12">
								<h2 class="h2 text-white mt-4"><b>Login</b></h2>
								<p class="lead text-white">Get access to your Orders, Wishlist and Recommendations</p>
							</div>
							<div class="col-12 p-0 d-none d-lg-block">
								<img class="img-fluid mt-5" src="image2.jpg">
							</div>
						</div>
					</div>
					<div style="background-color: whitesmoke" class="col-lg-8 p-0 d-none d-xl-block">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<div class="row">
							<form action="Alogin.jsp" method="post">
								<div class="col-12 mt-5 ml-5">
									Enter Email/Mobile number<br>
									<input class="w-100" type='text' name='id' required="required">
								</div>
								<div class="col-12 ml-5 mt-3">
									Enter Password<br>
									<input class="w-100" type='password' name='pass'>
								</div>
								<div class="col-12 ml-5 mt-3">
									<input class="w-100 text-white" style="background-color:orange" type='submit' value="LOGIN">
								</div>
							</form>
							<div class="col-12 ml-5 mt-3">
								<button class=" btn btn-outline-dark" onclick="signup()"><b>New to E-CART? Sign up</b></button>
							</div>
							<div class="col-12">
								<p class="text-muted mt-5 ml-5">We no longer support login via Social accounts.
								Please Enter your Email/Mobile number to Login.</p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-4 bg-primary d-none d-xl-none d-lg-block">
						<div class="row">
							<div class="col-12">
								<h2 class="h2 text-white mt-4"><b>Login</b></h2>
								<p class="lead text-white">Get access to your Orders, Wishlist and Recommendations</p>
							</div>
							<div class="col-12 p-0 d-none d-lg-block">
								<img class="img-fluid mt-5" src="image2.jpg">
							</div>
						</div>
					</div>
					<div style="background-color: whitesmoke" class="col-lg-8 p-0 d-none d-xl-none d-lg-block">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<div class="row">
							<form action="Alogin.jsp" method="post">
								<div class="col-12 mt-5 ml-5">
									Enter Email/Mobile number<br>
									<input class="w-100" type='text' name='id' required="required">
								</div>
								<div class="col-12 ml-5 mt-3">
									Enter Password<br>
									<input class="w-100" type='password' name='pass'>
								</div>
								<div class="col-12 ml-5 mt-3">
									<input class="w-100 text-white" style="background-color:orange" type='submit' value="LOGIN">
								</div>
							</form>
							<div class="col-12 ml-5 mt-3">
								<button class=" btn btn-outline-dark" onclick="signup()"><b>New to E-CART? Sign up</b></button>
							</div>
							<div class="col-12">
								<p class="text-muted mt-5 ml-5">We no longer support login via Social accounts.
								Please Enter your Email/Mobile number to Login.</p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 d-block d-lg-none d-xl-none bg-primary p-0">
						<img class="img-fluid" id="cross" src="cross.png" style="float: right;max-width: 30px;max-height: 30px;cursor: pointer" onclick="sshow()">
						<h2 class="h2 text-white p-2 mt-2 ml-3"><b>Login</b></h2>
						<p class="lead text-white p-2 ml-3">Get access to your Orders, Wishlist and Recommendations</p>
					</div>
					<div class="col-12 d-block d-lg-none d-xl-none bg-white">
						<form action="Alogin.jsp" method="post">
							<div class="col-12 mt-3">
								Enter Email/Mobile number<br>
								<input class="w-100" type='text' name='id' required="required">
							</div>
							<div class="col-12 mt-3">
								Enter Password<br>
								<input class="w-100" type='password' name='pass'>
							</div>
							<div class="col-12 mt-3">
								<input class="w-100 text-white" style="background-color:orange" type='submit' value="LOGIN">
							</div>
						</form>
						<div class="col-12 mt-3 mb-5">
							<button class=" btn btn-outline-dark" onclick="signup()"><b>New to E-CART? Sign up</b></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>