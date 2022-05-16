/*create or replace view v_Fatturato_Pagamenti_anno as*/
SELECT  c.cod,f.Cliente,f.Anno,Fatturato,Pagato, (Pagato-Fatturato) as Diff
FROM v_Pagamenti_anno c ,v_Fatturato_annuo f 
where c.cod=f.Cod and f.Anno=c.Anno
/*order by Diff desc*/