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
public with sharing class ComponentSampleController {
	
	// 取引先
	public Account objAccount {get; set;}
	// 取引先責任者
	public List<Contact> objContacts {get; set;}
	// 文字列
	public String str {get; set;}
	// 数値
	public Integer num {get; set;}
	// 日付
	public Date day {get; set;}
	// 日付時間
	public DateTime dayTime {get; set;}
	// コントローラー
	public ComponentSampleAssistController ctrl {get; set;}
	
	
	/*
	 * コンストラクタ
	 * @param	: StandardController
	 * @return	: なし
	 */
	public ComponentSampleController(ApexPages.StandardController prmStandard) {
		System.debug('◆◆◆◆ComponentSampleController:START');
		
		// 取引先
		this.objAccount = (Account)prmStandard.getRecord();
		if (String.isEmpty(this.objAccount.Id) == true) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, '取引先の取得に失敗しました。'));
			return;
		}
		// 取引先責任者
		this.objContacts = getContact(prmStandard.getId());
		if (this.objContacts.isEmpty() == true) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.WARNING, '取引先責任者：0件'));
		}
		// 文字列
		this.str = 'Component Sample';
		// 数値
		this.num = 123456789;
		// 日付
		this.day = system.today();
		// 日付時間
		this.dayTime = dateTime.now();
		// コントローラー
		this.ctrl = new ComponentSampleAssistController();
		
		System.debug('◆◆◆◆ComponentSampleController:END');
	}
	
	/*
	 * 取引先責任者取得
	 * @param	: 取引先ID		[prmAccountId]
	 * @return	: 取引先責任者
	 */
	private List<Contact> getContact(Id prmAccountId) {
		return [select Id,Name from Contact where AccountId =: prmAccountId order by Name asc limit 200];
	}
}