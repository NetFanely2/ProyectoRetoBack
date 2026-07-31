import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("users-crud", "users-get", "users-post", "users-put", "users-delete").relativeTo(getClass());
    }
}
