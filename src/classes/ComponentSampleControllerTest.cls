/**
 * コンポーネントサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class ComponentSampleControllerTest {
    
    /**
     * コンストラクタ
     * 取引先なし
     */
    static testMethod void ComponentSampleControllerTest1() {
        
        Test.startTest();
        
        // コンストラクタ
        ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(new Account()));
        System.assertEquals(String.isEmpty(cls.account.Id), true);
        
        Test.stopTest();
    }
    
    /**
     * コンストラクタ・テスト
     * 取引先あり
     */
    static testMethod void ComponentSampleControllerTest2() {
            
        // 取引先テストデータ作成
        Account account = createAccount();
        
        Test.startTest();
        
        // コンストラクタ
        ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(account));
        System.assertEquals(String.isEmpty(cls.account.Id), false);
        
        Test.stopTest();
    }
    
    /**
     * 取引先データの作成
     */
    private static Account createAccount() {
        
        Account account = new Account(
             Name = 'Name'
            ,AccountNumber = 'A-0000'
            ,Site = 'Site'
        );
        
        insert account;
        
        return account;
    }
}