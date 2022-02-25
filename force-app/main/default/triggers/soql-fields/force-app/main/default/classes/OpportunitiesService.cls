public with sharing class OpportunitiesService {
   DiscountsService ds;
    
   public OpportunitiesService(DiscountsService ds){
      this.ds = ds;
   }   
 
   public Opportunity createOpportunity(Id accountId){
      Opportunity o = new Opportunity(
         Name = 'New Opportunity',
         StageName = 'New',
         CloseDate = Date.today(),
         Discounts__c = ds.getDiscount(accountId)
      );
      insert o;
      return o;
   }
}