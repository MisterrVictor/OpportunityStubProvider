@isTest 
global class MockDiscountsService implements StubProvider {
   public Static Date OpportunityDate = date.newInstance(2022, 02, 25); //'Date2022-02-25 00:00:00';
   Integer amount;
   public MockDiscountsService(Integer amount){
      this.amount = amount;
   }
    
   global Object handleMethodCall(Object stubbedObject,
               String stubbedMethodName,
                     System.Type returnType,
                           List<System.Type> listOfParamTypes,
                                 List<String> listOfParamNames,
                                       List<Object> listOfArgs){
/*      if(stubbedMethodName == 'getDiscount'){
         Decimal discount = 0;
         if(amount >= 10 && amount < 20) discount = 10;
         if(amount >= 20) discount = 20;
         return discount;
      }
      return null;
*/                                           
      switch on stubbedMethodName {
      when 'getDiscount' {
        Decimal discount = 0;
         if(amount >= 10 && amount < 20) discount = 10;
         if(amount >= 20) discount = 20;
         return discount;
      }
      when 'getOpportunityDate' {
        return OpportunityDate;
      }
    }
    return null;                                     
   }
}