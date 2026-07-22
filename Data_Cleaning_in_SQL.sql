-- SELECT *
-- FROM layoffs

-- CREATE TABLE layoffs_staging
-- LIKE layoffs

-- SELECT *
-- FROM layoffs_staging


-- INSERT layoffs_staging
-- SELECT *
-- FROM layoffs

-- SELECT *
-- FROM layoffs_staging

-- SELECT *,
-- ROW_NUMBER() OVER (
-- PARTITION BY company , industry, total_laid_off , percentage_laid_off, `date`) AS row_num
-- FROM layoffs_staging;

-- WITH duplicate_cte AS
-- (SELECT *,
-- ROW_NUMBER() OVER (
-- PARTITION BY company ,location, industry, total_laid_off , percentage_laid_off, `date` , stage, country , funds_raised_millions) AS row_num
-- FROM layoffs_staging
-- )
-- SELECT *
-- FROM duplicate_cte
-- WHERE row_num > 1;


-- CREATE TABLE `layoffs_staging2` (
--   `company` text,
--   `location` text,
--   `industry` text,
--   `total_laid_off` int DEFAULT NULL,
--   `percentage_laid_off` text,
--   `date` text,
--   `stage` text,
--   `country` text,
--   `funds_raised_millions` int DEFAULT NULL,
--   `row_num` INT 
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- SELECT *
-- FROM layoffs_staging2

-- INSERT INTO layoffs_staging2
-- SELECT *,
-- ROW_NUMBER() OVER (
-- PARTITION BY company ,location, 
-- industry, total_laid_off , percentage_laid_off, `date` , 
-- stage, country , funds_raised_millions) AS row_num
-- FROM layoffs_staging;


-- SELECT *
-- FROM layoffs_staging2
-- WHERE row_num > 1;


-- DELETE
-- FROM layoffs_staging2
-- WHERE row_num > 1;

-- SELECT *
-- FROM layoffs_staging2




-- SELECT company , TRIM(company)
-- FROM layoffs_staging2;

-- UPDATE layoffs_staging2
-- SET company = TRIM(company);

-- SELECT DISTINCT industry
-- FROM layoffs_staging2
-- ORDER BY 1;

-- SELECT DISTINCT location
-- FROM layoffs_staging2
-- ORDER BY 1;

-- SELECT DISTINCT country
-- FROM layoffs_staging2
-- ORDER BY 1;

-- SELECT DISTINCT country , TRIM(trailing '.' FROM country)
-- FROM layoffs_staging2
-- ORDER BY 1;


-- UPDATE layoffs_staging2
-- SET country = TRIM(trailing '.' FROM country)
-- where country like 'United States%';


-- SELECT DISTINCT country 
-- FROM layoffs_staging2
-- ORDER BY 1;


-- SELECT `date`,
-- STR_TO_DATE(`date`, '%m/%d/%Y')
-- FROM layoffs_staging2;

-- update layoffs_staging2
-- SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y')

-- SELECT `date`
-- FROM layoffs_staging2;

-- Alter table  layoffs_staging2
-- Modify column `date` DATE

-- Select *
-- FROM layoffs_staging2
-- where total_laid_off  is Null
-- and percentage_laid_off is null

-- Select *
-- FROM layoffs_staging2
-- where industry = '';

-- select *
-- from layoffs_staging2 t1
-- join layoffs_staging2 t2
--     on t1.company = t2.company 
-- where t1.industry = ''
-- and t2.industry is not null

-- update layoffs_staging2 t1
-- join layoffs_staging2 t2
--         on t1.company = t2.company 
-- set t1.industry = t2.industry
-- where t1.industry is null
-- and t2.industry is not null

-- update layoffs_staging2 
-- set industry = null
-- where industry = ' ';

-- Select *
-- from layoffs_staging2;

-- Select *
-- FROM layoffs_staging2
-- where total_laid_off  is Null
-- and percentage_laid_off is null

-- delete
-- FROM layoffs_staging2
-- where total_laid_off  is Null
-- -- and percentage_laid_off is null

-- delete
-- from layoffs_staging2
-- where company = 'Airbnb';

-- select *
-- from layoffs_staging2

-- alter table layoffs_staging2
-- drop column row_num

-- select *
-- from layoffs_staging2



