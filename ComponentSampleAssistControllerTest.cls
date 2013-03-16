/*
 * コンポーネントサンプルアシスト・コントローラーテストクラス
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
private class ComponentSampleAssistControllerTest {

    /*
	 * コンストラクタ・テスト
	 * 取引先なし
	 */
    static testMethod void ComponentSampleAssistControllerTest() {
        System.debug('◆◆◆◆ComponentSampleAssistControllerTest:START');
        
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
            ComponentSampleAssistController cls = new ComponentSampleAssistController();
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆ComponentSampleAssistControllerTest:END');
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