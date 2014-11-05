package com.world.hanle.services.config;


import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.PersistenceUnit;
import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.dialect.MySQL5Dialect;
import org.hibernate.jpa.HibernatePersistenceProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.concurrent.ConcurrentMapCache;
import org.springframework.cache.support.SimpleCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;

import com.world.hanle.services.model.Board;
import com.mysql.jdbc.Driver;

@Configuration
@Profile("mysql")
public class MysqlDataSourceConfiguration   {

	@Autowired
	@Qualifier("localDataSource")
	DataSource localDataSource;
	
	@Autowired
	@Qualifier("authDatasource")
	DataSource authDataSource;
	
//	@Autowired
//	@Qualifier("reposDatasource")
//	DataSource reposDataSource;
	
    @Bean(name="localDataSource")
    public DataSource dataSource( Environment environment ) throws Exception {
        String user = environment.getProperty("ds.user"),
                pw = environment.getProperty("ds.password"),
                url = environment.getProperty("ds.url");
        Class<Driver> driverClass = environment.getPropertyAsClass( "ds.driverClass", Driver.class );

        return getDataSource(user, pw, url, driverClass);
    }

    @Primary
    @Bean(name = "localEntityManager")
    @PersistenceUnit(name = "localEntityManagerUnit")
    public LocalContainerEntityManagerFactoryBean localContainerEntityManagerFactoryBean() throws Exception {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setPersistenceUnitName("localEntityManagerUnit");
        em.setDataSource( localDataSource );
        em.setPackagesToScan(Board.class.getPackage().getName());
        em.setPersistenceProvider(new HibernatePersistenceProvider());
        Map<String, String> p = new HashMap<String, String>();
        p.put(org.hibernate.cfg.Environment.DEFAULT_BATCH_FETCH_SIZE, "8"); // 4, 8, 16
        p.put(org.hibernate.cfg.Environment.SHOW_SQL, "false");
        p.put(org.hibernate.cfg.Environment.FORMAT_SQL, "false");
        p.put(org.hibernate.cfg.Environment.POOL_SIZE, "30");
        p.put(org.hibernate.cfg.Environment.AUTOCOMMIT, "false");
        p.put(org.hibernate.cfg.Environment.DIALECT, MySQL5Dialect.class.getName());
        em.setJpaPropertyMap(p);
        return em;
    }
    
    @Bean(name="authDatasource")
    public DataSource authDataSource( Environment environment ) throws Exception {
        String user = environment.getProperty("authds.user"),
                pw = environment.getProperty("authds.password"),
                url = environment.getProperty("authds.url");
        Class<Driver> driverClass = environment.getPropertyAsClass( "authds.driverClass", Driver.class );

        return getDataSource(user, pw, url, driverClass);
    }
    
    @Bean(name = "authEntityManager")
    @PersistenceUnit(name = "authEntityManagerUnit")
    public LocalContainerEntityManagerFactoryBean localContainerAuthEntityManagerFactoryBean() throws Exception {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setPersistenceUnitName("authEntityManagerUnit");
        em.setDataSource( authDataSource );
        em.setPackagesToScan(Board.class.getPackage().getName());
        em.setPersistenceProvider(new HibernatePersistenceProvider());
        Map<String, String> p = new HashMap<String, String>();
        p.put(org.hibernate.cfg.Environment.DEFAULT_BATCH_FETCH_SIZE, "4"); // 4, 8, 16
        p.put(org.hibernate.cfg.Environment.SHOW_SQL, "false");
        p.put(org.hibernate.cfg.Environment.FORMAT_SQL, "false");
        p.put(org.hibernate.cfg.Environment.POOL_SIZE, "1");
        p.put(org.hibernate.cfg.Environment.DIALECT, MySQL5Dialect.class.getName());
        
        em.setJpaPropertyMap(p);
        return em;
    }
    
//    @Bean(name="reposDatasource")
//    public DataSource svnDataSource( Environment environment ) throws Exception {
//        String user = environment.getProperty("reposds.user"),
//                pw = environment.getProperty("reposds.password"),
//                url = environment.getProperty("reposds.url");
//        Class<Driver> driverClass = environment.getPropertyAsClass( "reposds.driverClass", Driver.class );
//
//        return getDataSource(user, pw, url, driverClass);
//    }
    
//    @Bean(name = "reposEntityManager")
//    @PersistenceUnit(name = "reposEntityManagerUnit")
//    public LocalContainerEntityManagerFactoryBean localContainerreposEntityManagerFactoryBean() throws Exception {
//        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
//        em.setPersistenceUnitName("reposEntityManagerUnit");
//        em.setDataSource( reposDataSource );
//        em.setPackagesToScan(User.class.getPackage().getName());
//        em.setPersistenceProvider(new HibernatePersistenceProvider());
//        Map<String, String> p = new HashMap<String, String>();
//        p.put(org.hibernate.cfg.Environment.DEFAULT_BATCH_FETCH_SIZE, "4"); // 4, 8, 16
//        p.put(org.hibernate.cfg.Environment.SHOW_SQL, "false");
//        p.put(org.hibernate.cfg.Environment.FORMAT_SQL, "true");
//        p.put(org.hibernate.cfg.Environment.DIALECT, MySQL5Dialect.class.getName());
//        
//        em.setJpaPropertyMap(p);
//        return em;
//    }
    
    @Bean
    public CacheManager cacheManager() throws Exception {
        SimpleCacheManager scm = new SimpleCacheManager();
        Cache serverCache = new ConcurrentMapCache("servers");
        Cache projectCache = new ConcurrentMapCache("projects");
        Cache versionCache = new ConcurrentMapCache("versions");
        Cache projectServerCache = new ConcurrentMapCache("projectServers");
        Cache historyCache = new ConcurrentMapCache("historys");
        Cache employeeCache = new ConcurrentMapCache("employees");
        Cache adminCache = new ConcurrentMapCache("admins");
        scm.setCaches(Arrays.asList(serverCache, projectCache, versionCache, projectServerCache, historyCache, employeeCache, adminCache));
        return scm;
    }
    
    public DataSource getDataSource(String user, String pw, String url, Class<Driver> driverClass) {
    	BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName( driverClass.getName() );
        basicDataSource.setPassword( pw );
        basicDataSource.setUrl( url );
        basicDataSource.setUsername( user );
        basicDataSource.setInitialSize( 100 );
        basicDataSource.setMaxActive( 200 );
        basicDataSource.setMinEvictableIdleTimeMillis(1800000);
        basicDataSource.setNumTestsPerEvictionRun(3);
        basicDataSource.setValidationQuery("SELECT 1");
        basicDataSource.setValidationQueryTimeout(30000);
        basicDataSource.setTestOnBorrow(true);
        basicDataSource.setTestWhileIdle(true);
        basicDataSource.setTestOnReturn(false);
        basicDataSource.setTimeBetweenEvictionRunsMillis(1800000);
        basicDataSource.setRemoveAbandoned(true);
        basicDataSource.setDefaultAutoCommit(false);
        return basicDataSource;
    }

}
