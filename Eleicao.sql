Table Partido {
  Numero_identificador Decimal (2,0) [primary key]
  Nome varchar(100)
  Sigla varchar(10) 
}

Table Candidato {
  Id_candidato int [primary key] 
  Nome_completo varchar(100)
  Numero_Urna decimal (5,0) [unique]
  Cargo varchar(15)
  UF char (2)
  Partido_Filiado varchar(15) 
}

Table Eleitor {
  numero_titulo varchar(12) [primary key]
  Nome varchar(100)
  RG varchar(9)
  UF char(2)
  Cidade varchar(25)
  Zona int 
  Seção int 
}

Table Presenca {
  ID_Urna int [primary key]
  numero_titulo varchar(12)
  Data_Hora datetime
}

Table Votos {
  Id_voto int [primary key]
  Nome_completo varchar(100)
  Data_hora datetime
}




Ref: "Eleitor"."numero_titulo" ?<? "Presenca"."numero_titulo"

Ref: "Candidato"."Nome_completo" ?<>? "Votos"."Nome_completo"

Ref: "Partido"."Nome" ?<>? "Candidato"."Partido_Filiado"