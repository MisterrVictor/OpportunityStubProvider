@isTest
public class OpportunitiesServiseDateTest {
   @isTest
   private static void testOpportunityDate(){
    System.assertEquals(date.newInstance(2022, 02, 25), createOpportunity(0).CloseDate, 'Date mismatch');
    }

   private static Opportunity createOpportunity(Integer amount){
      Account acc = new Account(Name = 'Test');
      insert acc;
      DiscountsService mockDS = (DiscountsService) 
         		 Test.createStub(DiscountsService.class, 
                          new MockDiscountsService(amount));
      Opportunity opp = new OpportunitiesServiseDate(mockDS).createOpportunity(acc.Id);
      return opp;
   }
}