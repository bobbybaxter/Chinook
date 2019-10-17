select top (1) BillingCountry, count(Total) as Total
from Invoice
group by BillingCountry
order by Total desc