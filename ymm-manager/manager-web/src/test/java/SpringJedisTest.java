import com.ymm.commons.jedis.JedisClient;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-*.xml")
public class SpringJedisTest {

    @Autowired
    private JedisClient jedisClient;

    @Test
    public void testSpringJedis(){
        jedisClient.set("QAQ","yes");

    }

}
