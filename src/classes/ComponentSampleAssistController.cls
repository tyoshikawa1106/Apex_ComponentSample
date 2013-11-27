/**
 * コンポーネントサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class ComponentSampleAssistController {
    
    public static final String LABEL = 'ComponentSampleAssist';
    public String msg {get; set;}
    
    /**
     * コンストラクタ
     */
    public ComponentSampleAssistController() {
        System.debug('ComponentSampleAssistController:START');
        
        this.msg = LABEL;
        
        System.debug('ComponentSampleAssistController:END');
    }
}