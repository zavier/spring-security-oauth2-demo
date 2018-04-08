## 使用认证码认证方式认证

一、GET http://localhost:8080/oauth/authorize

参数
- client_id=APP_1
- redirect_uri=http://localhost:8080/hello
- response_type=code
- scope=read
- state=12345

二、进入登录页面，用户名: user, 密码： password

三、进入授权页，点击授权按钮

四、进入重定向页，并附带参数 code 与 state

五、获取 Token

POST http://localhost:8080/oauth/token

参数
- grant_type=authorization_code
- code=8WLBnt（上一步获得的 code）
- redirect_uri=http%3a%2f%2flocalhost%3a8080%2fhello

并在 Header 中添加 : Authorization , 值为 Basic Base64编码(CLIENT_ID + ":" + CLIENT_SECRET)

此处可直接写 Authorization 值为 Basic QVBQXzE6UFdEXzE=

六、使用 Token 调用接口

GET http://localhost:8080/study

在 Header 中添加 Token, 格式为 ： Authorization 值为 ：Bearer \[TOKEN\]


## 使用客户端认证方式认证 

一、 GET http://localhost:8080/oauth/token

参数
- grant_type=client_credentials

在 Header 中添加 Authorization， 值为 Basic \[Base64编码((client_id):(client_secret))\]


## 刷新 Token

GET http://localhost:8080/oauth/token

参数
- grant_type=refresh_token
- refresh_token=(之前获得的refresh_code)

Header 中添加 Authorization， 值为 Basic \[Base64编码((client_id):(client_secret))\]