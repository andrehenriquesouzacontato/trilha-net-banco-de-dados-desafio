-- 1
SELECT Nome, Ano FROM Filmes
-- 2
SELECT nome, ano
FROM filmes
ORDER BY ano ASC;
-- 3
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';
-- 4
SELECT nome, ano
FROM filmes
WHERE ano = 1997;
-- 5
SELECT nome, ano
FROM filmes
WHERE ano > 2000;
-- 6
SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;
-- 7
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY COUNT(*) DESC;
-- 8
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'm';
-- 9
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'f'
ORDER BY PrimeiroNome;
-- 10
SELECT f.id, f.nome, g.Genero
FROM Filmes f
JOIN Generos g ON f.id = g.id;
-- 11
SELECT f.id, f.nome AS NomeDoFilme, g.Genero
FROM Filmes f
JOIN Generos g ON f.id = g.id
WHERE g.Genero = 'Mistério';
-- 12
SELECT f.nome AS NomeDoFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.id;






















