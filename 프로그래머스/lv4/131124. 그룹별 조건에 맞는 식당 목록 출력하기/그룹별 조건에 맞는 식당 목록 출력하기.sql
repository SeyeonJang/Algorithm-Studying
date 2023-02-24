# -- 코드를 입력하세요
SELECT
    a.MEMBER_NAME,
    b.REVIEW_TEXT,
    DATE_FORMAT(b.REVIEW_DATE, '%Y-%m-%d') AS 'REVIEW_DATE'
FROM MEMBER_PROFILE a
JOIN REST_REVIEW b
    on a.MEMBER_ID = b.MEMBER_ID
where b.MEMBER_ID in (select MEMBER_ID from REST_REVIEW
                      group by MEMBER_ID
                      having COUNT(MEMBER_ID) = (select COUNT(MEMBER_ID) from REST_REVIEW
                                                group by MEMBER_ID
                                                order by COUNT(MEMBER_ID) desc limit 1))
--    and COUNT(b.MEMBER_ID) = MAX(COUNT(b.MEMBER_ID))
order by b.REVIEW_DATE asc, b.REVIEW_TEXT asc;

# 이거 실행 됨, COUNT가 MAX값 갖는 MEMBER_ID 찾음
# select MEMBER_ID from REST_REVIEW
# group by MEMBER_ID
# having COUNT(MEMBER_ID) = (select COUNT(MEMBER_ID) from REST_REVIEW
#                             group by MEMBER_ID
#                             order by COUNT(MEMBER_ID) desc limit 1)
