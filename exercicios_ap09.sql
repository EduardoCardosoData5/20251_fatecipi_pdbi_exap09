-- Active: 1744072411606@@127.0.0.1@5432@postgres
-- -- Função para gerar valores aleatórios
-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior INT) RETURNS INT AS
-- $$
-- BEGIN
--   RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;

-- 1.1 IF - Verifica se número é múltiplo de 3
-- DO $$
-- DECLARE
--   numero INT := valor_aleatorio_entre(1, 100);
-- BEGIN
--   RAISE NOTICE 'Número gerado: %', numero;

--   IF numero % 3 = 0 THEN
--     RAISE NOTICE 'É múltiplo de 3';
--   ELSE
--     RAISE NOTICE 'Não é múltiplo de 3';
--   END IF;
-- END $$;

-- 1.1 CASE - Verifica se número é múltiplo de 3
DO $$
DECLARE
  numero INT := valor_aleatorio_entre(1, 100);
BEGIN
  RAISE NOTICE 'Número gerado: %', numero;

  RAISE NOTICE '%',
    CASE
      WHEN numero % 3 = 0 THEN 'É múltiplo de 3'
      ELSE 'Não é múltiplo de 3'
    END;
END $$;

