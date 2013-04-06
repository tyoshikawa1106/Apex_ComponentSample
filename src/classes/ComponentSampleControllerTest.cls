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
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(new Account()));
            System.assertEquals(String.isEmpty(cls.objAccount.Id), true);
            
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
        User objUser = getUser();
        
        // テスト実施
        System.RunAs(objUser) {
        	
        	// 取引先テストデータ作成
        	Account objAccount = createAccount();
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            ComponentSampleController cls = new ComponentSampleController(new ApexPages.StandardController(objAccount));
            System.assertEquals(String.isEmpty(cls.objAccount.Id), false);
            
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
		
		// 取引先
		Account objAccount = new Account();
		// 取引先名
		objAccount.Name = 'Name';
		// 取引先番号
		objAccount.AccountNumber = 'A-0000';
		// 取引先 部門
		objAccount.Site = 'Site';
		// INSERT
		insert objAccount;
		
		System.debug('◆◆◆◆createAccount:END');
		return objAccount;
	}
}