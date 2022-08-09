package services.rest;

import javax.ejb.Stateless;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;

import javax.ws.rs.core.SecurityContext;

@Path("/login")
@Stateless
public class LoginRestService {

    @Context 
    private SecurityContext securityContext;
       
    @GET
    public Response login(){
    	
    	try {
			String principal = securityContext.getUserPrincipal().getName();
			System.out.println("Principal: " + principal);
			} 
    	catch (Exception e) {
			System.out.println("No principal is logged in");
			e.printStackTrace();
			return Response.noContent().build();
		}
	    
	    return Response.ok().build();
    }

}
