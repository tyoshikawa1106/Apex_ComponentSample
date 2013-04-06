/*
 * コンポーネントサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class ComponentSampleControllerTest {
	
    /*
	 * コンストラクタ・テスト
	 * 取引先なし
	 */
    static testMethod void ComponentSampleControllerTest1() {
        System.debug('◆◆◆◆ComponentSampleControllerTest1:START');
        
        // ユーザ
        User user = getUser();
        
        // テスト実施
        System.RunAs(user) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(new Account()));
            System.assertEquals(String.isEmpty(cls.account.Id), true);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆ComponentSampleControllerTest1:END');
    }
    
    /*
	 * コンストラクタ・テスト
	 * 取引先あり
	 */
    static testMethod void ComponentSampleControllerTest2() {
        System.debug('◆◆◆◆ComponentSampleControllerTest2:START');
        
        // ユーザ
        User user = getUser();
        
        // テスト実施
        System.RunAs(user) {
        	
        	// 取引先テストデータ作成
        	Account account = createAccount();
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(account));
            System.assertEquals(String.isEmpty(cls.account.Id), false);
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆ComponentSampleControllerTest2:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
    
    /*
	 * 取引先データの作成
	 */
	private static Account createAccount() {
		System.debug('◆◆◆◆createAccount:START');
		
		Account account = new Account(
			 Name = 'Name'
			,AccountNumber = 'A-0000'
			,Site = 'Site'
		);
		
		insert account;
		
		System.debug('◆◆◆◆createAccount:END');
		return account;
	}
}