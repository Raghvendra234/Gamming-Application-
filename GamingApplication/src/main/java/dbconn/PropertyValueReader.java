//package dbconn;
//
//import java.io.InputStream;
//import java.util.Properties;
//
//public class PropertyValueReader 
//{
//
//	public static String getValue(String key)
//	{
//		Properties properties=new Properties();
//		try{
//	
// InputStream inputstream=PropertyValueReader.class.getClassLoader().getResourceAsStream("db.properties");
// 
//    properties.load(inputstream);
//    	    	
//	
//		}catch(Exception e)
//		{
//		 e.printStackTrace();	
//		}
//		return properties.getProperty(key);
//	}
// 
//	public static void main(String[] args)
//	{
//	System.out.println(PropertyValueReader.getValue("db.url"));	
//	}
//	
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
