# Microservice users

Querys y Mutations

### Crear usuario
```graphql
mutation {
  createUser(user: {
    email: "jaasuarezga@unal.edu.co",
    password: "test1234",
    username: "jaasuarezga"
  }){
    email
  }
}
```
### Editar usuario
```graphql
mutation {
  updateUser(id: 1, 
    user: {
      email: "jaasuarezga@gmail.com",
      username: "jairo"
    }, 
    token: {
      token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MjcyNzk2MzYsInN1YiI6MX0.wOzchFWLoC2W_nN9_ySiKwxZP3308d8AmMF4IBR62As"
    }) {
    id
    email
    username
  }
}
```
### Autenticacion

```graphql
mutation {
	createSession(auth: {
    auth: {
      email: "jaasuarezga@unal.edu.co",
      password: "test1234"
    }
  }){
  	jwt
  }
}
```

### Autenticacion ldap

```graphql
mutation {
	auth(auth:{
    email: "jaasuarezga",
    password: "test1234",
  }){
    answer
  }
}
```

### Verificacion de sesión

```graphql
query {
  checkSession(token:{
    token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MjU4NDIyOTAsInN1YiI6MX0.kgZfm5Pe_g0l_Z8jI1ATq_VRrws1pAw7g29P3XB0TSo"
  }){
    id
    username
  }
}
```
