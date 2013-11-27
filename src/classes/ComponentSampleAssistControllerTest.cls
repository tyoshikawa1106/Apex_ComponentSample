/**
 * コンポーネントサンプルアシスト
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class ComponentSampleAssistControllerTest {

    /**
     * コンストラクタ
     * 取引先なし
     */
    static testMethod void ComponentSampleAssistControllerTest() {
            
        Test.startTest();
        
        // コンストラクタ
        ComponentSampleAssistController cls = new ComponentSampleAssistController();
        System.assertEquals(cls.msg, ComponentSampleAssistController.LABEL);
        
        Test.stopTest();
    }
}