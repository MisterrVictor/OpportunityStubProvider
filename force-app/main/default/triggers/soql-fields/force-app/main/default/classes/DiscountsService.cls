public with sharing class DiscountsService { 
    public Decimal getDiscount(Id accountId){
        Integer numClosedWon = [SELECT COUNT()
                                FROM   Opportunity
                                WHERE  AccountId = :accountId
                                AND    IsWon = true];
        Decimal discount = 0;
        if(numClosedWon >= 10 && numClosedWon < 20) discount = 10; 
        if(numClosedWon >= 20) discount = 20;
        return discount;
    }
    
    public Date getOpportunityDate(){
        return Date.today();
    }
}