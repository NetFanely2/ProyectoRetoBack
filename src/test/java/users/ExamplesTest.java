package users;

import com.intuit.karate.junit5.Karate;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ExamplesTest {

    @Karate.Test
    Karate testUsers() {
        // Corre todos los archivos .feature dentro del paquete actual (users)
        return Karate.run("users-crud", "users-get", "users-post", "users-put", "users-delete")
                .relativeTo(getClass());
    }

}
