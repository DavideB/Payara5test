# Payara5test
This repository contains a small web application to be deployed to a Payara 5 server that documents a random NullPointerException
raised when trying to retrieve the user principal from a SecurityContext object in a JAX-RS bean.

# Installation instructions #
Prerequisite: Payara Server 5.2022.2 with user "test", password "test" belonging to groups "sales:admin" configured in
the file REALM, running on jdk1.8.0_231, os platform: Windows 10.

Deploy the TEST_Payara5.war file to the above specified Payara 5 Server, or import the project in this repository into 
Eclipse IDE as a Dynamic Web Project, configure the above specified Payara 5 Server in the Eclipse IDE and Run the app on this
server.

# Run instructions #
Connect to URI "http://<server_dns_name_or_ip_address_of_your_payara_server>:8080/test" from a Chrome or FireFox browser.
The app uses a secure connection, so depending on wether a vaild SSL certificate is installed in your server or not, you 
could get a security warning tha you should disregard and choose to continue connecting to the unsecure server.
You should get the follwing authentication page where both user and password input fields are already filled in with 
the string "test". If not, fill both fields manually with the string "test" and click the login button.

You should get the following display:

  <html>
	<body>
		<nav>
	    <div>   	
	    	<span>Payara 5 Authentication Test</span>
	  	</div>
	    <div>
	      <ul>
	      	<li><a href="home.html">home</a></li>
	 	      <li><a href="login.html">login</a></li>
	 	      <li><a href="logout.jsp">logout</a></li>
	 	      <li><a href="index.jsp">refresh</a></li>
	 	    </ul>	  			
	    </div>
		</nav>
	</body>
</html>
either OK! or KO! should be displayed here.
  
# Results interpretation#
The last line represents the result of the test: OK! if the test succeeded or KO! if the test failed.
Repeating the test by clicking the refresh, home, login links or logout link followed by a login should give 
a sequence of random fail/success. 

The same app run on Payara 4 server never fails, suggesting that the problem was introduced in Payara 5.
