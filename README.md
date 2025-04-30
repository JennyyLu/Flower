An online flower shop based on Java and Tomcat(made it as my final project in my freshmen year), feel free to take it~just remember to star it

一个我在大一时做的一个由Java，Tomcat实现的线上花店网站，前端内容皆为英文，不介意的小伙伴可以拿走

1.开发技术及环境

1.1 Tomcat概述

Tomcat是一个开源的Java Servlet容器，用于托管Java Web应用。我们将使用Tomcat作为网站的服务器，以支持Java Servlet技术。

1.2 MySQL概述

MySQL是一个流行的关系型数据库管理系统，用于存储和检索网站的数据。我们将使用MySQL来管理用户信息、商品信息等。

1.3 Jsp概述	

JSP（JavaServer Pages）是Java编程语言的扩展，用于在网页上嵌入Java代码。我们将使用JSP来构建网站的动态页面。

2.设计与实现

2.1前台功能设计与实现

2.1.1 注册功能

<img width="445" alt="image" src="https://github.com/user-attachments/assets/a0fd25ba-5c14-49b3-8b8d-e1ae8ded1c12" />

2.1.2登录功能

<img width="445" alt="image" src="https://github.com/user-attachments/assets/5a031ad5-ff99-4c87-b2d4-69be78b916cf" />

2.1.3网站首页 

头部个人信息显示用cookie来设置，在登录成功后，在用户放置带有用户信息的cookie   

<img width="164" alt="image" src="https://github.com/user-attachments/assets/eaf78875-ba71-4f79-b33b-dbcfe6c26a5f" />

2.1.4前台个人中心功能

<img width="445" alt="image" src="https://github.com/user-attachments/assets/0c9aedc4-615c-41ca-99a0-11b55e51b799" />

这里的用户显示也是用cookie来得到用户信息

2.1.5前台发布留言页面展示

<img width="445" alt="image" src="https://github.com/user-attachments/assets/31b8f841-f37c-45bb-9aad-165cc6544dad" />
2.1.6前台新闻列表显示

新闻列表是用while循环,展示数据库里的每一条新闻

<img width="445" alt="image" src="https://github.com/user-attachments/assets/d75d3d83-ed42-4baa-b386-73b543d3c545" />

2.1.7前台新闻详情

新闻详细是在网页地址拿到newsID 然后在数据库里查询。

<img width="445" alt="image" src="https://github.com/user-attachments/assets/82155dba-1acc-4fa9-bcec-8b554eb934d3" />

2.2后台功能设计与实现

5.2.1后台页面设计

HTML 中的链接 (<a> 标签) 中直接指定在一个特定的框架 (<iframe>) 中打开链接。使其他页面可以在中间位置打开

2.2.2后台登陆功能

<img width="445" alt="image" src="https://github.com/user-attachments/assets/7621616a-3ad7-4e6f-828e-efac51fbce80" />

2.2.3后台系统之发布新闻

<img width="445" alt="image" src="https://github.com/user-attachments/assets/0ee5b93e-86ec-426a-a710-1f4c654ac2c7" />

2.2.4后台系统之新闻列表

<img width="445" alt="image" src="https://github.com/user-attachments/assets/12bbc4eb-42c1-46af-9a54-85a21a2c0852" />

里的删除使用了数据库的删除操作，修改用了数据库的更新操作


