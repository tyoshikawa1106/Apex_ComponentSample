/**
 * コンポーネントサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class ComponentSampleSubControllerTest {

    /**
     * コンストラクタ
     * 取引先なし
     */
    static testMethod void ComponentSampleSubControllerTest1() {
        
        Test.startTest();
        
        ComponentSampleSubController cls = new ComponentSampleSubController();
        
        Test.stopTest();
    }
}