REM   Script: Labels
REM   ,

CREATE TABLE pedidos ( 
id NUMBER, 
cliente VARCHAR2(50), 
valor NUMBER 
);

INSERT INTO pedidos (id, cliente, valor) VALUES (1, 'Cliente A', 150);

INSERT INTO pedidos (id, cliente, valor) VALUES (2, 'Cliente B', 250);

INSERT INTO pedidos (id, cliente, valor) VALUES (3, 'Cliente C', 100);

INSERT INTO pedidos (id, cliente, valor) VALUES (4, 'Cliente D', 300);

DECLARE 
v_id pedidos.id%TYPE; 
v_cliente pedidos.cliente%TYPE; 
v_valor pedidos.valor%TYPE; 
v_desconto CONSTANT NUMBER := 0.10; 
v_output VARCHAR2(4000); 
BEGIN 
<<processar_pedidos>> 
FOR rec IN (SELECT id, cliente, valor FROM pedidos) LOOP 
v_id := rec.id; 
v_cliente := rec.cliente; 
v_valor := rec.valor; 
v_output := 'Processando pedido ID: ' || v_id || ', Cliente: ' 
|| v_cliente || ', Valor: ' || v_valor || ' '; 
IF v_valor <= 200 THEN 
v_output := v_output || 'Sem desconto aplicado. '; 
GOTO proximo_pedido; 
END IF; 
v_valor := v_valor - (v_valor * v_desconto); 
v_output := v_output || 'Aplicado desconto de 10%. Novo valor: ' || v_valor 
|| ' '; 
<<proximo_pedido>> 
DBMS_OUTPUT.PUT_LINE(v_output); 
END LOOP processar_pedidos; 
END;
/

INSERT INTO pedidos (id, cliente, valor) VALUES (5, 'Cliente E', 400);

INSERT INTO pedidos (id, cliente, valor) VALUES (6, 'Cliente F', 700);

INSERT INTO pedidos (id, cliente, valor) VALUES (7, 'Cliente G', 1100);

INSERT INTO pedidos (id, cliente, valor) VALUES (8, 'Cliente H', 1600);

INSERT INTO pedidos (id, cliente, valor) VALUES (9, 'Cliente I', 2000);

DECLARE  
v_id pedidos.id%TYPE;  
v_cliente pedidos.cliente%TYPE;  
v_valor pedidos.valor%TYPE;  
v_desconto CONSTANT NUMBER := 0.10;  
v_output VARCHAR2(4000);  
BEGIN  
<<processar_pedidos>>  
FOR rec IN (SELECT id, cliente, valor FROM pedidos) LOOP  
v_id := rec.id;  
v_cliente := rec.cliente;  
v_valor := rec.valor;  
v_output := 'Processando pedido ID: ' || v_id || ', Cliente: '  
|| v_cliente || ', Valor: ' || v_valor || ' ';  
IF v_valor <= 200 THEN  
v_output := v_output || 'Sem desconto aplicado. ';  
GOTO proximo_pedido;  
END IF;  
v_valor := v_valor - (v_valor * v_desconto);  
v_output := v_output || 'Aplicado desconto de 10%. Novo valor: ' || v_valor  
|| ' ';  
<<proximo_pedido>>  
DBMS_OUTPUT.PUT_LINE(v_output);  
END LOOP processar_pedidos;  
END;
/

