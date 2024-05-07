select full_name from Client where client_id = (
    select client_id from TransactionDetails where flat_id = (
        select flat_id from FlatDetails where floor_number = 6
    )
);

select SUM(transaction_amount) from TransactionDetails where client_id = (
    select client_id from Client where budget = (
        select MAX(budget) from Client
    )
);

select email from Client where client_id = (
    select client_id from TransactionDetails where flat_id = (
        select flat_id from FlatDetails where property_id = (
            select property_id from PropertyDetails where type = 'south'
        )
    )
);

update TransactionDetails set transaction_amount = 300000.00
where transaction_id = 10;

delete from FlatDetails where flat_id = 8;

--Find the average budget of clients
select AVG(budget) as average_budget
from Client;

--Count the number of flats owned by each flat owner
select flat_owner, COUNT(*) as num_flats_owned
from FlatDetails
group by flat_owner;

--Retrieves email,full_name from tables and combines them
select email,full_name
from TransactionDetails td
full outer join Client c on td.client_id = c.client_id;

--Retrieves transaction_date,budget from tables and combines them
select transaction_date,budget
from TransactionDetails td
inner join Client c on td.client_id = c.client_id;


--trigger retrieve
set serveroutput on
create or replace trigger trg_after_transaction_insert
after insert on TransactionDetails
for EACH row
declare
    v_client_name Client.full_name%TYPE;
    v_flat_address PropertyDetails.address%TYPE;
begin
    select full_name into v_client_name from Client where client_id = :NEW.client_id;
    select address into v_flat_address FROM PropertyDetails pd
    join FlatDetails fd on pd.property_id = fd.property_id
    where fd.flat_id = :NEW.flat_id;
    
    DBMS_OUTPUT.PUT_LINE('New transaction details:');
    DBMS_OUTPUT.PUT_LINE('Transaction ID: ' || :NEW.transaction_id);
    DBMS_OUTPUT.PUT_LINE('Client Name: ' || v_client_name);
    DBMS_OUTPUT.PUT_LINE('Flat Address: ' || v_flat_address);
    DBMS_OUTPUT.PUT_LINE('Transaction Amount: ' || :NEW.transaction_amount);
    DBMS_OUTPUT.PUT_LINE('Transaction Date: ' || TO_CHAR(:NEW.transaction_date, 'DD-MON-YYYY'));
END;
/

--insert using trigger
set SERVEROUTPUT on;

declare
    v_transaction_id TransactionDetails.transaction_id%type := 18;
    v_client_id TransactionDetails.client_id%type := 1;
    v_flat_id TransactionDetails.flat_id%type := 3;
    v_transaction_date TransactionDetails.transaction_date%type := TO_DATE('2024-07-01', 'YYYY-MM-DD');
    v_transaction_amount TransactionDetails.transaction_amount%type := 50000.00;
begin
    insert into TransactionDetails (transaction_id, client_id, flat_id, transaction_date, transaction_amount)
    values (v_transaction_id, v_client_id, v_flat_id, v_transaction_date, v_transaction_amount);
    
    DBMS_OUTPUT.PUT_LINE('Transaction inserted successfully.');
EXCEPTION
    when OTHERS then
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
end;
/


