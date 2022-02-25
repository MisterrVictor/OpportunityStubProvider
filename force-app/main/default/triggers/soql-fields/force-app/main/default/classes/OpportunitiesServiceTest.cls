@isTest
public class OpportunitiesServiceTest {
   @isTest
   private static void discountShouldBeZero(){
       System.assertEquals(0, createOpportunity(0).Discounts__c);
   }
   @isTest
   private static void discountShouldBeTen(){
       System.assertEquals(10, createOpportunity(15).Discounts__c);
   }
   @isTest
   private static void discountShouldBeTwenty(){
       System.assertEquals(20, createOpportunity(25).Discounts__c);
   }

   private static Opportunity createOpportunity(Integer amount){
      Account a = new Account(Name = 'Test');
      insert a;
      DiscountsService mockDS = (DiscountsService) 
         		 Test.createStub(DiscountsService.class, 
                          new MockDiscountsService(amount));
      Opportunity o = new OpportunitiesService(mockDS).createOpportunity(a.Id);
      return o;
   }
}