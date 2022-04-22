package it.tss.bkmapp;

import javax.annotation.security.DeclareRoles;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import org.eclipse.microprofile.auth.LoginConfig;
import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition;
import org.eclipse.microprofile.openapi.annotations.enums.SecuritySchemeType;
import org.eclipse.microprofile.openapi.annotations.info.Contact;
import org.eclipse.microprofile.openapi.annotations.info.Info;
import org.eclipse.microprofile.openapi.annotations.security.SecurityScheme;
import org.eclipse.microprofile.openapi.annotations.servers.Server;

/**
 * Configures a JAX-RS endpoint. Delete this class, if you are not exposing
 * JAX-RS resources in your application.
 *
 * @author airhacks.com
 */
@SecurityScheme(securitySchemeName = "jwt", type = SecuritySchemeType.HTTP, scheme = "bearer", bearerFormat = "jwt")
@LoginConfig(authMethod = "MP-JWT", realmName = "MP-JWT")
@DeclareRoles({"users"})
@ApplicationPath("resources")
@OpenAPIDefinition(info = @Info(
            title = "Bkmapp application", 
            version = "1.0.0", 
            contact = @Contact(
                    name = "tss dev", 
                    email = "tssdev@gmail.com",
                    url = "http://ciacformazione.it")
            ),
            servers = {
                @Server(url = "/bkmapp",description = "localhost")
            })
public class JAXRSConfiguration extends Application {

}
