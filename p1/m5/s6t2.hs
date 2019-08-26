module S6T2 where

usersWithBadPasswords :: Reader UsersTable [User]
usersWithBadPasswords = do
  users <- asks (map fst . filter (\(user,pwd) -> pwd == "123456"))
  return users
