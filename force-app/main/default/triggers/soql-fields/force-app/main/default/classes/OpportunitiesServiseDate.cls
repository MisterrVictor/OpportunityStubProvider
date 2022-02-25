public class OpportunitiesServiseDate {
DiscountsService ds;
    
   public OpportunitiesServiseDate(DiscountsService ds){
      this.ds = ds;
   }   
 
   public Opportunity createOpportunity(Id accountId){
      Opportunity opp = new Opportunity(
         Name = 'New Date Opportunity',
         StageName = 'New',
         CloseDate = ds.getOpportunityDate()
      );
      insert opp;
      return opp;
   }
}