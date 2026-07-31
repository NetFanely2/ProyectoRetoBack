package helpers;

import java.util.UUID;

public class DataGenerator {
    public static String getRandomEmail() {
        return "qa_test_" + UUID.randomUUID().toString().substring(0, 8) + "@test.com";
    }

    public static String getRandomName() {
        return "Usuario QA " + UUID.randomUUID().toString().substring(0, 4);
    }
}
