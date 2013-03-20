/*
 * コンポーネントサンプルサブ・コントローラークラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class ComponentSampleSubController {
	
	// 取引先
	public Account subAccount {get; set;}
	// 取引先責任者
	public List<Contact> subContacts {get; set;}
	// 文字列
	public String subStr {get; set;}
	// 数値
	public Integer subNum {get; set;}
	// 日付
	public Date subDay {get; set;}
	// 日付時間
	public DateTime subDayTime {get; set;}
	// コントローラー
	public ComponentSampleAssistController subCtrl {get; set;}
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public ComponentSampleSubController() {
		System.debug('◆◆◆◆ComponentSampleSubController:START');
		
		// 取引先
		this.subAccount = new Account();
		// 取引先責任者
		this.subContacts = new List<Contact>();
		
		// 文字列
		this.subStr = '';
		// 数値
		this.subNum = 0;
		// 日付
		this.subDay = null;
		// 日付時間
		this.subDayTime = null;
		// コントローラー
		this.subCtrl = new ComponentSampleAssistController();
		
		System.debug('◆◆◆◆ComponentSampleSubController:END');
	}
}