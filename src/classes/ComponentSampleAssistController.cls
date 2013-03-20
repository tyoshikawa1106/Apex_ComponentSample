/*
 * コンポーネントサンプルアシスト・コントローラークラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class ComponentSampleAssistController {
	
	public String msg {get; set;}
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public ComponentSampleAssistController() {
		System.debug('◆◆◆◆ComponentSampleAssistController:START');
		
		this.msg = 'ComponentSampleAssist';
		
		System.debug('◆◆◆◆ComponentSampleAssistController:END');
	}
}