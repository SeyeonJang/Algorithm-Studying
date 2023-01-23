-- 코드를 입력하세요
SELECT count(*) as USERS from USER_INFO
    where AGE>=20 and AGE<=29 and JOINED like '2021%';