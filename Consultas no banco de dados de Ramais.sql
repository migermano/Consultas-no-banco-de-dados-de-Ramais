SELECT * FROM ANDARES
SELECT * FROM TELEFONE
SELECT * FROM RAMAL
SELECT * FROM DEPARTAMENTO
SELECT * FROM USUARIO
SELECT * FROM USUARIO_RAMAL

SELECT DISTINCT  Nome FROM USUARIO
SELECT DISTINCT  Nome FROM DEPARTAMENTO
SELECT DISTINCT  Ramal_HomeOffice FROM RAMAL

SELECT * FROM USUARIO WHERE DepartamentoID = 55
SELECT * FROM USUARIO WHERE Nome IN ('Viviane', 'Priscila', 'Tiago')
SELECT * FROM USUARIO WHERE Nome IS NOT NULL AND DepartamentoID >= 60;

SELECT * FROM DEPARTAMENTO WHERE Nome = 'SGI WEB' AND TelefoneID = 11
SELECT * FROM USUARIO WHERE NOT (Nome = 'Tiago' AND DepartamentoID IN (52, 63));
SELECT * FROM USUARIO WHERE NOT ( Nome = 'Viviane' OR Nome = 'Adriano'); 

SELECT 
    U.UsuarioID, 
    U.Nome AS UsuarioNome, 
    D.Nome AS DepartamentoNome, 
    A.Nome AS AndarNome, 
    T.Telefone_Numero, 
    R.Ramal_Numero, 
    R.Ramal_HomeOffice 
FROM 
    USUARIO U
JOIN 
    DEPARTAMENTO D ON U.DepartamentoID = D.DepartamentoID
JOIN 
    ANDARES A ON D.AndarID = A.AndarID
LEFT JOIN 
    TELEFONE T ON D.TelefoneID = T.TelefoneID
LEFT JOIN 
    USUARIO_RAMAL UR ON U.UsuarioID = UR.UsuarioID
LEFT JOIN 
    RAMAL R ON UR.RamalID = R.RamalID;