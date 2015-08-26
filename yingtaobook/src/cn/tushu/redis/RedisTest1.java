package cn.tushu.redis;

import java.util.List;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;


public class RedisTest1 {
	
	public static void main(String [] a){
		
		//连接本地的 Redis 服务
		Jedis jedis = new Jedis("localhost");
		System.out.println(jedis.ping());
		
		//字符串 实例
		/*jedis.set("test1", "test1_123321");
		System.out.println(jedis.get("test1"));*/
		
		//列表实例
		/*jedis.lpush("lb1", "lb1");
		jedis.lpush("lb1", "lb.....");
		jedis.lpush("lb1", "=======");
		List<String> list = jedis.lrange("lb1", 0, 5);
		for(int i = 0;i<list.size();i++){
			System.out.println(list.get(i));
		}*/
		
		/*在不同的线程中使用相同的Jedis实例会发生奇怪的错误。但是创建太多的实现也不好因为这意味着会建立很多sokcet连接，
		也会导致奇怪的错误发生。单一Jedis实例不是线程安全的。为了避免这些问题，可以使用JedisPool, JedisPool是一个线程安全的网络连接池。
		可以用JedisPool创建一些可靠Jedis实例，可以从池中拿到Jedis的实例。这种方式可以解决那些问题并且会实现高效的性能*/
//		private static JedisPool pool = null;
//		JedisPool pool1 = new JedisPool(new JedisPoolConfig(), "localhost");/
	}
	
}
