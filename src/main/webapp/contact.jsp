<%@ include file="navbar.jsp"%>
<div class="container pt-2 pb-5">
	<form class="container pt-2 pb-5" action="afficherContact.jsp"
		method="post">
		<fieldset>
			<legend class="mt-4">
				<strong>Dauphine Contact Form : Add a contact</strong>
			</legend>
			<div class="form-group">
				<label class="col-form-label mt-4" for="LastName">Last Name</label>
				<input type="text" name="lastName" class="form-control"
					placeholder="Enter your Last name" id="LastName" maxlength="10"
					required> <label class="col-form-label mt-4"
					for="MiddleName">Middle Name</label> <input type="text"
					name="middleName" class="form-control"
					placeholder="Enter your middle name" id="MiddleName" maxlength="10"
					required> <label class="col-form-label mt-4"
					for="FirstName">First Name</label> <input type="text"
					name="firstName" class="form-control"
					placeholder="Enter your First name" id="FirstName" maxlength="10"
					required> <label class="col-form-label mt-4" for="Gender">Gender</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="male" value="male" required> <label
						class="form-check-label" for="male"> Male </label>
				</div>
				<div class="form-check mt-2">
					<input class="form-check-input" type="radio" name="gender"
						id="female" value="female" required> <label
						class="form-check-label" for="female"> Female </label>
				</div>

				<label for="Email" class="form-label mt-4">Email address</label> <input
					name="email" type="email" class="form-control" id="Email"
					aria-describedby="emailHelp" placeholder="Enter email" required>

				<label for="PhoneNumber" class="form-label mt-4">Phone
					number</label> <input name="phone" type="tel" class="form-control"
					id="PhoneNumber" placeholder="Enter phone number" required>
					
				<label for="Password" class="form-label mt-4">Password</label> <input
					type="password" name="password" class="form-control" id="Password"
					placeholder="Enter your password" required>
					
				<div class="form-check mt-4">
					<input class="form-check-input" type="checkbox" id="contact"
						name="contact"> <label class="form-check-label"
						for="contact"> Contact ? (Yes/No) </label>
				</div>
			</div>
			<button type="submit" class="btn btn-success mt-4">Submit</button>
			<input type="reset" class="btn btn-warning mt-4" value="Reset">
			<button type="button" class="btn btn-info mt-4"
				onclick="changeValueById('LastName', 'Last name value changed')">Js
				Call</button>
		</fieldset>
	</form>

	<div class="container mt-5 py-3 rounded" id="howToContainer">
		<h1>How to add a contact using the form?</h1>
	</div>

	<div class="container mt-4">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do
			eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
			ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
			aliquip ex ea commodo consequat. Duis aute irure dolor in
			reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
			pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
			culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
</div>