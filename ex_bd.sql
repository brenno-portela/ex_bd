
SELECT 
    product_category_name,
    AVG(product_name_length) AS name_avgLength,
    MAX(product_name_length) AS name_maxLength,
    MIN(product_name_length) AS name_minLength

FROM tb_products

WHERE product_description_length > 100

GROUP BY product_category_name

HAVING AVG(product_description_length) > 500

ORDER BY MIN(product_name_length) DESC, 
         MAX(product_name_length) DESC;


