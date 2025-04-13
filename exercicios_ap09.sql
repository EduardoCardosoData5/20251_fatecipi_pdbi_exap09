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
-- DO $$
-- DECLARE
--   numero INT := valor_aleatorio_entre(1, 100);
-- BEGIN
--   RAISE NOTICE 'Número gerado: %', numero;

--   RAISE NOTICE '%',
--     CASE
--       WHEN numero % 3 = 0 THEN 'É múltiplo de 3'
--       ELSE 'Não é múltiplo de 3'
--     END;
-- END $$;

-- 1.2 IF - Verifica se número é múltiplo de 3 ou de 5
-- DO $$
-- DECLARE
--   numero INT := valor_aleatorio_entre(1, 100);
-- BEGIN
--   RAISE NOTICE 'Número gerado: %', numero;

--   IF numero % 3 = 0 OR numero % 5 = 0 THEN
--     RAISE NOTICE 'É múltiplo de 3 ou de 5';
--   ELSE
--     RAISE NOTICE 'Não é múltiplo de 3 nem de 5';
--   END IF;
-- END $$;

-- 1.2 CASE - Verifica se número é múltiplo de 3 ou de 5
-- DO $$
-- DECLARE
--   numero INT := valor_aleatorio_entre(1, 100);
-- BEGIN
--   RAISE NOTICE 'Número gerado: %', numero;

--   RAISE NOTICE '%',
--     CASE
--       WHEN numero % 3 = 0 OR numero % 5 = 0 THEN 'É múltiplo de 3 ou de 5'
--       ELSE 'Não é múltiplo de 3 nem de 5'
--     END;
-- END $$;

-- 1.3 Calculadora


<<<<<<< HEAD
DO $$
DECLARE
  op1 INT := valor_aleatorio_entre(1, 100);
  op2 INT := valor_aleatorio_entre(1, 100);
  operacao INT := 2;
  resultado NUMERIC;
BEGIN
  RAISE NOTICE '=== MENU CALCULADORA ===';
  RAISE NOTICE '1 - Soma';
  RAISE NOTICE '2 - Subtração';
  RAISE NOTICE '3 - Multiplicação';
  RAISE NOTICE '4 - Divisão';
  RAISE NOTICE '==========================';

  RAISE NOTICE 'Você escolheu a operação: %', operacao;
  RAISE NOTICE 'Números: % e %', op1, op2;
=======
-- DO $$
-- DECLARE
--   op1 INT := valor_aleatorio_entre(1, 100);
--   op2 INT := valor_aleatorio_entre(1, 100);
--   operacao INT := 2;
--   resultado NUMERIC;
-- BEGIN
--   RAISE NOTICE '=== MENU CALCULADORA ===';
--   RAISE NOTICE '1 - Soma';
--   RAISE NOTICE '2 - Subtração';
--   RAISE NOTICE '3 - Multiplicação';
--   RAISE NOTICE '4 - Divisão';
--   RAISE NOTICE '==========================';
>>>>>>> 9dfa351 (feat: implementa menu de escolha de operação)

--   RAISE NOTICE 'Você escolheu a operação: %', operacao;
--   RAISE NOTICE 'Números: % e %', op1, op2;

<<<<<<< HEAD
  ELSIF operacao = 2 THEN
    resultado := op1 - op2;
    RAISE NOTICE '% - % = %', op1, op2, resultado;

  ELSIF operacao = 3 THEN
    resultado := op1 * op2;
    RAISE NOTICE '% * % = %', op1, op2, resultado;

  ELSIF operacao = 4 THEN
    IF op2 != 0 THEN
      resultado := op1::NUMERIC / op2;
      RAISE NOTICE '% / % = %', op1, op2, resultado;
    ELSE
      RAISE NOTICE 'Divisão por zero não é permitida!';
    END IF;

  ELSE
    RAISE NOTICE 'Operação inválida!';
  END IF;
END $$;

=======
--   IF operacao = 1 THEN
--     resultado := op1 + op2;
--     RAISE NOTICE '% + % = %', op1, op2, resultado;

--   ELSIF operacao = 2 THEN
--     resultado := op1 - op2;
--     RAISE NOTICE '% - % = %', op1, op2, resultado;

--   ELSIF operacao = 3 THEN
--     resultado := op1 * op2;
--     RAISE NOTICE '% * % = %', op1, op2, resultado;

--   ELSIF operacao = 4 THEN
--     IF op2 != 0 THEN
--       resultado := op1::NUMERIC / op2;
--       RAISE NOTICE '% / % = %', op1, op2, resultado;
--     ELSE
--       RAISE NOTICE 'Divisão por zero não é permitida!';
--     END IF;

--   ELSE
--     RAISE NOTICE 'Operação inválida!';
--   END IF;
-- END $$;

>>>>>>> 9dfa351 (feat: implementa menu de escolha de operação)
