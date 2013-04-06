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
private class ComponentSampleSubControllerTest {

    /*
	 * コンストラクタ・テスト
	 * 取引先なし
	 */
    static testMethod void ComponentSampleSubControllerTest1() {
        System.debug('◆◆◆◆ComponentSampleSubControllerTest1:START');
        
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
            ComponentSampleSubController cls = new ComponentSampleSubController();
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆ComponentSampleSubControllerTest1:END');
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
}