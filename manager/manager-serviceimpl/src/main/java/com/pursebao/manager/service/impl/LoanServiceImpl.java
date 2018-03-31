package com.pursebao.manager.service.impl;

import com.pursebao.commons.pojo.po.Loan;
import com.pursebao.manager.dao.*;
import com.pursebao.manager.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pursebao.commons.pojo.po.*;
import com.pursebao.commons.tools.UUIDCreator;
import com.pursebao.manager.pojo.vo.LoanContract;
import com.pursebao.manager.pojo.vo.LoanDetail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;
import java.util.List;

@Service
public class LoanServiceImpl implements LoanService {

    private Logger logger= LoggerFactory.getLogger(this.getClass());
    @Autowired
    private LoanMapper loanMapper;
    @Autowired
    private LoanStatusMapper loanStatusMapper;
    @Autowired
    private LoanCustomMapper loanCustomerMapper;
    @Autowired
    private ProductsMapper productsMapper;
    @Autowired
    private ContractMapper contractMapper;
    @Override
    public List<LoanDetail> listAllLoan() {
        List<LoanDetail> listLoan=null;
        try{
            listLoan=loanCustomerMapper.selectAllLoan();
        }

        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }

        return listLoan;
    }

    @Override
    public int deleteLoan(List<String> ids) {
        int res=0;
        try{
            Loan record=new Loan();
            record.setLoanOnline(5);
            LoanExample example=new LoanExample();
            LoanExample.Criteria c=example.createCriteria();
            c.andLidIn(ids);
            res=loanMapper.updateByExampleSelective(record,example);

        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }

    // 贷款审核被拒绝
    @Override
    public int refuseLoanCheck(String lid) {
        int res=0;
        try{
            Loan record=new Loan();
            record.setLoanOnline(4); // 状态4表示审核被拒绝
            LoanExample example=new LoanExample();
            LoanExample.Criteria c=example.createCriteria();
            c.andLidEqualTo(lid);
            res=loanMapper.updateByExampleSelective(record,example);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }

    // 审核
    @Override
    public int updatecheckLoan(Loan loan) {
        Date date=new Date();
        loan.setProductChecked(date);
        int res=0;
        try{
            res=loanMapper.updateByPrimaryKeySelective(loan);
            LoanStatus loanStatus=new LoanStatus();
            String repaymentId=UUIDCreator.createUUID();
            loanStatus.setRepaymentId(repaymentId);
            loanStatus.setRepaymentStatus(1);

            loanStatus.setLoanId(loan.getLid());

            res=loanStatusMapper.insertSelective(loanStatus);
        } catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }

    @Override
    public LoanContract findLoanById(String lid) {
        LoanContract loan=null;
        try{
            loan=loanCustomerMapper.selectLoanById(lid);
        }
        catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return loan;
    }

    @Override
    public int updatepublishProducts(Products products) {
        String lid=products.getLoanLid();
        Loan loan=new Loan();
        loan.setLid(lid);
        Date date=new Date();
        loan.setProductPublish(date);
        int res=0;
        try{
            res=loanMapper.updateByPrimaryKeySelective(loan);
            String pid=UUIDCreator.createUUID();
            products.setPid(pid);
            products.setProductOnline(1);
            if(products.getSurplusMoney()!=null) {
                products.setSurplusMoney(products.getSurplusMoney() * 10000);
            }
            if(products.getExpectedRate()!=null){
                products.setExpectedRate(products.getExpectedRate()*1.0/100);
            }
            res=productsMapper.insertSelective(products);
        } catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }

    @Override
    public int makeContract(Products products) {
        int res=0;
        try{
            LoanContract loanContract=loanCustomerMapper.selectLoanById(products.getLoanLid());
            if(loanContract!=null){
                String bsideName=null;
                Integer bsideLimittime=null;
                String bsideLoanPayway =null;
                Double bsideExpectedRate =null;
                if(loanContract.getCompanyName()!=null){
                    bsideName=loanContract.getCompanyName();
                }else{
                    bsideName=loanContract.getRealname();
                }
                if(loanContract.getLoanLimittime()!=null) {
                    bsideLimittime = loanContract.getLoanLimittime();
                }
                if(loanContract.getLoanPayway()!=null) {
                    bsideLoanPayway = loanContract.getLoanPayway() == 1 ? "一次性还本付息" : "按月付息，到期还本";
                }
                if(products.getExpectedRate()!=null) {
                    bsideExpectedRate = products.getExpectedRate();
                }
                String content="委托投资协议\n" +
                        "甲方（委托方）：\n" +
                        "身份证号码/营业执照号码/统一社会信用代码：\n" +
                        "\n" +
                        "乙方（受托方）：";
                content +=bsideName+"\n";
                content +="营业执照号码/统一社会信用代码：";
                content +=UUIDCreator.createUUID()+"\n";
                content +="丙方（会员服务方）：千贷宝（杭州）网络科技有限公司\n" +
                        "统一社会信用代码：91110107MA00EU339B\n" +
                        "鉴于：\n" +
                        "1、甲方为丙方会员，是拥有完全民事权利能力和民事行为能力的自然人、法人及其他形式的经济组织，有投资需求。\n" +
                        "2、乙方为一家合法设立并有效存续的资产管理公司，其可提供的服务包括受托资产管理、投资咨询、信息咨询等。\n" +
                        "3、丙方为千贷宝金服会员服务系统（网址：www.qiandaibao.cn，以下统称“会员服务系统”）的合法运营商，通过会员服务系统向会员提供信息展示、风控技术、IT服务、信息披露等服务。\n" +
                        "根据《中华人民共和国合同法》及其他相关法律、法规的规定，甲、乙双方经协商一致，就乙方通过会员服务系统，接受甲方委托将甲方所委托资金按本协议约定进行投资等相关事宜，达成如下协议，以资共同信守。\n" +
                        "第一章 相关定义\n" +
                        "第一条 定义\n" +
                        "1、委托投资：委托人基于对受托人的信任，自愿将合法拥有的资金委托受托人进行管理，投资于委托投资标的。受托人以委托人利益最大化为原则对委托资金按约定进行投资管理，以获取投资收益。\n" +
                        "2、委托投资标的：指委托资金所投向的基础产品。\n" +
                        "3、委托投资标的预期年化收益率：指委托投资标的发行过程中，所披露的委托投资标的的预期年化收益率。\n" +
                        "4、委托投资收益起始日：指委托投资收益计算的起始日，发布当日委托投资的，收益起始日为委托投资日的下一个自然日；非发布当日委托投资的，收益起始日为委托投资日当日。\n" +
                        "5、委托投资收益到期日：指委托投资收益计算的到期日，该日期为委托投资标的到期日。\n" +
                        "6、委托投资收益获得期：指委托投资收益的取得期间，即自委托投资收益起始日至委托投资收益到期日的期间。该期间同为受托人管理费计算期间。\n" +
                        "8、受托人管理费率：指委托投资收益获得期内，受托人管理费占委托投资金额的年化比率。\n" +
                        "9、委托人预期收款日：指向委托人支付其委托投资本金及实际收益的日期。\n" +
                        "第二章 委托投资要素\n" +
                        "第二条 委托投资详情\n" +
                        "1、委托投资本金：人民币 元\n" +
                        "2、委托投资预期年化收益率(365天/年)：";
                content +=bsideExpectedRate+"\n";
                content +="3、委托投资标的期限：";
                content +="4、委托投资标的的到期日：";
                content +="5、本金及收益返还方式：";
                content +=bsideLoanPayway+"\n";
                content +="6、项目方名称：\n" +
                        "第三条 委托投资资金的投资标的为包括但不限于非银行金融机构发行的产品及直接借款项目。\n" +
                        "第四条 委托人可获得收益为预期收益。以委托投资标的成立日作为收益起算日，不足一月的按日计算。受托人不保证委托人届时必然获得预期收益。\n" +
                        "第五条 甲方与乙方之间基于信任关系成立委托投资关系，甲方同意乙方以乙方的名义履行委托投资资金的投资管理职能，并签署相关协议。甲方禁止乙方以任何形式转委托。针对本次委托，乙方向甲方收取管理费，此费用为委托投资金额乘以年化费率【0】%。\n" +
                        "第三章 本金及收益结算方式\n" +
                        "第六条 为实现交易资金流向的透明，丙方与监管银行合作开立了资金监管账户，用以保障交易资金的独立运行，委托投资的放款和回款都将在丙方的资金监管账户内完成。乙方授权丙方通过第三方代付公司将乙方虚拟账户中的受托资金直接代付给乙方受托出借的指定项目方，同时授权丙方作为其资金代收付方，项目方将还款本金及收益回款到乙方在丙方开设的虚拟账户，乙方授权丙方从其虚拟账户划转给甲方虚拟账户，甲方申请提现后，甲方授权丙方通过第三方代付公司将提现资金划转至甲方实体账户。\n" +
                        "第七条 乙方向甲方支付本金和收益的方式按照委托投资标的约定的方式执行。若本次委托投资出现本协议第十一条所列风险，委托人委托资金本金及/或收益无法足额兑付时，委托资金回款偿付顺序如下：乙方管理费（如有）、委托本金、预期收益。\n" +
                        "第八条 委托人预期收款日确定\n" +
                        "委托投资标的到期（本金/收益）后 1 个工作日内，乙方委托丙方通过会员服务系统将相应的本金和收益返还给甲方。如甲方委托投资标的发生提前到期，乙方需另行通知付款日期。\n" +
                        "第九条 资金的划付\n" +
                        "1、甲方通过点击确认的方式签署本协议后，即授权丙方或丙方合作的第三方支付公司/银行冻结甲方账户内相应数额的委托投资资金，项目成立后，丙方有权委托合作的第三方支付公司/银行将约定的委托投资资金划转给项目方。\n" +
                        "2、项目方需按约定将委托投资的本金和收益支付到乙方在丙方开设的虚拟账户，丙方依据乙方的授权通过会员服务系统将相应的本金/收益返还到甲方在丙方开立的虚拟账户，资金到账后甲方可选择提现或继续委托投资。\n" +
                        "第十条 项目方每次支付委托资金本金及收益时如约定付款日为周六、日或法定节假日的，则付款时间应延后至节假日之后的一个工作日。\n" +
                        "第四章 投资风险及信息披露\n" +
                        "第十一条 甲方签署本协议，将视为已了解并认可以下内容，对本次委托投资可能发生的风险有足够的了解和认知，并自愿承担相关风险。\n" +
                        "本次委托投资可能面临的各项风险，包括但不限于：\n" +
                        "1、信用风险：若基础资产发行人未能及时足额兑付本金及收益，委托人面临不能按照预期获得本金及收益甚至本金遭受损失的风险。委托人确认，受托人并不对委托人的委托投资本金和任何预期收益承担保证、保本承诺或任何其他责任；\n" +
                        "2、流动性风险：委托期间委托人无权解除委托，可能导致委托人需要资金时不能随时变现，并可能使委托人丧失其他投资机会；\n" +
                        "3、提前终止风险：委托期内若市场发生重大变动、出现突发性事件或其他受托人认为需要提前终止本产品的情形时，受托人有权提前终止本产品，在此情形下，委托人可能面临不能按预期期限取得预期收益的风险；\n" +
                        "4、政策风险：因财政政策、货币政策、产业政策、区域发展政策等国家宏观政策发生变化，可能导致市场价格波动，从而影响预期收益；\n" +
                        "5、利率风险：利率风险是指由于利率变动而导致的资产价格和资产收益的损益。利率波动会直接影响企业的融资成本和利润水平，使投资收益水平随之发生变化，从而产生风险；\n" +
                        "6、信息传递风险：委托人应根据本产品说明所载明的公告方式及时查询本产品的相关信息。如果委托人未及时查询，或由于通讯故障、系统故障以及其他不可抗力等因素的影响使得委托人无法及时了解产品信息，并由此影响委托人的投资决策，因此而产生的责任和风险由委托人自行承担；\n" +
                        "7、使用网络在线点击签署协议的风险。本产品采用网络在线点击确认的方式签署，所以在本次委托投资的交易过程当中，由于互联网和移动通讯网络数据传输等原因，数据传输可能会出现中断、停顿、延迟，传输数据可能出现错误；委托人账号及密码信息泄露或客户身份可能被仿冒；委托人的网络终端设备及软件系统可能会受到非法攻击或病毒感染，导致本协议数据无法传输或传输失败；\n" +
                        "8、不可抗力风险：指由于自然灾害、战争等不可抗力因素的出现，将严重影响金融市场的正常运行，可能影响产品的认购、投资、偿还等的正常进行，甚至导致本产品收益降低乃至本金损失。对于由不可抗力风险所导致的任何损失，由投资者自行承担；\n" +
                        "9、委托项目自身风险：在委托人足额支付委托资金的前提下，如因委托投资标的未成立等非受托人原因致使投资目的不能实现，受托人会将委托资金委托丙方划转给委托人，且无需向委托人支付任何费用或者利息；\n" +
                        "10、委托投资标的提前到期风险：如委托投资标的提前到期，受托人会按照实际的投资本金和收益委托丙方划转给委托人，委托人实际收到的投资本金和收益将无法达到预期。\n" +
                        "第十二条 信息披露\n" +
                        "乙方作为委托投资项目相关情况的信息披露责任人应向甲方进行信息披露，披露的形式包括但不限于通过会员服务系统披露、站内通知、电子邮件、短信、电话、书面信函等。\n" +
                        "本协议有效期内，乙方将履行如下事件的信息披露义务：\n" +
                        "因各种原因导致委托投资交易无法进行的，乙方应需通知甲方。\n" +
                        "第五章 各方的声明、陈述与承诺\n" +
                        "第十三条 甲方的声明、陈述与承诺\n" +
                        "1、甲方保证具有签订和履行本协议所必需的民事权利能力和民事行为能力，能独立承担民事责任。如需授权批准，甲方保证本次委托乙方进行资金投资管理已获得所必需的授权批准。如需履行必要的内部程序，甲方保证其签署和履行本协议已履行必要的内部程序；\n" +
                        "2、甲方保证在本协议有效期内保持其会员服务系统用户名等信息的合法有效性；\n" +
                        "3、甲方已充分了解并认识到本次委托投资的特殊性及可能存在的风险，经独立审慎判断后自主做出委托决定，自愿签署本协议，由此所产生的风险由甲方自行承担；\n" +
                        "4、甲方保证其所委托资金来源合法，如果任何第三方对甲方所委托资金的归属、合法性等提出异议，甲方应自行解决并承担由此产生的法律责任；\n" +
                        "5、甲方保证不利用会员服务系统进行信用卡套现、洗钱或其他违法违规行为；\n" +
                        "6、甲方保证其提供的所有证件、资料、信息等均真实、准确、完整和合法有效。若上述材料或信息发生变化，甲方保证在该等变化发生之日起2日内向丙方提供变更后的信息；\n" +
                        "7、甲方已仔细阅读并完全接受丙方所发布的会员服务协议、交易规则和与本协议所涉委托事项相关的全部内容，充分知悉和了解本协议项下各方的权利和义务；\n" +
                        "8、甲方同意并授权在本协议生效后，乙方有权委托丙方或丙方合作的银行/第三方支付公司从甲方的会员服务系统账户中扣收本协议项下委托资金；\n" +
                        "9、甲方承诺，在委托过程中产生的依据相关法律法规应由甲方负担的税费，由甲方自行向其税务机关申报、缴纳，若因此而导致他方损失，由甲方赔偿；\n" +
                        "10、甲方确认并同意，甲方授权丙方或乙方根据本协议代表甲方所采取的一切行为和措施的法律后果均归属于甲方，且该等授权不可撤销；\n" +
                        "11、甲方确认并同意，甲方的委托资金在委托投资标的成立或被宣告投资失败前，甲方不得要求返还或申请用于投资其他项目；\n" +
                        "12、甲方对在本协议签署及履行过程中所获知的有关其他各方的未公开信息，应依法予以保密；\n" +
                        "13、甲方应妥善保管其在会员服务系统的用户名和密码，通过该用户名和密码登录的任何操作均视为甲方的行为,均系甲方的真实意思表示，所产生的一切法律后果由甲方自行负担。\n" +
                        "14、委托投资标的项目方（包括但不限于发行人/挂牌人、借款人）如提供了担保措施，甲方授权乙方作为其担保权人的代理人，有权代甲方行使与之相关一切担保权利，本授权在协议有效期内不可变更和撤销。\n" +
                        "15、甲方有权通过会员服务系统将本协议项下的委托投资全部或部分转让给第三方，转让完成后受让方作为本协议中的甲方继续履行本协议项下全部或部分相关义务、行使相关权利。\n" +
                        "第十四条 乙方的声明、陈述与承诺\n" +
                        "1、乙方保证具有签订和履行本协议所必需的民事权利能力和民事行为能力，能独立承担民事责任；\n" +
                        "2、乙方保证其签署和履行本协议已履行必要的内部程序，已获得所必需的授权批准；\n" +
                        "3、乙方保证在本协议有效期内保持其用户名等信息的合法有效性；\n" +
                        "4、乙方已仔细阅读并完全接受丙方所发布的会员服务协议、交易规则和与本协议所涉相关的全部内容，充分知悉和了解本协议项下各方的权利和义务；\n" +
                        "5、乙方同意在付款日由丙方或丙方合作的第三方支付公司/银行协助乙方将还款资金转给包括甲方在内的各委托人；\n" +
                        "6、乙方保证为实施本协议项下交易提供的所有文件、资料、信息等都是真实、准确、完整和有效的，所提交的财务报表真实地反映了该财务报表出具时乙方的财务状况。若上述资料或信息发生变化，乙方保证在该等变化发生之日起2日内向丙方提供更新后的资料；\n" +
                        "7、乙方承诺恪尽职守，认真完成受托事务，尽最大努力为委托人谋取最大利益。\n" +
                        "8、乙方对在本协议签署及履行过程中所获知的有关其他各方的未公开信息，应依法予以保密。\n" +
                        "9、乙方不对甲方的本金和收益做任何保证性承诺，甲方应自行承担委托投资标的的相关风险。\n" +
                        "第十五条 丙方的声明、陈述与承诺\n" +
                        "1、丙方有权按照约定向甲方和乙方收取服务费用；\n" +
                        "2、丙方应当按照本协议的规定，恪尽职守，努力为甲方、乙方进行服务；\n" +
                        "3、丙方须对甲、乙双方的信息和资料进行保密，但依合同约定（如公布黑名单等）、丙方规则及法律法规规定需公布的除外；\n" +
                        "4、丙方作为会员服务提供方，不对甲方的本金和收益做任何保证性承诺，不对乙方的违约行为承担任何责任。\n" +
                        "第六章 违约责任\n" +
                        "第十六条 乙方违反本协议约定逾期向甲方支付委托资金本金及收益的，应按日向甲方支付相当于应付款项万分之一的滞纳金。\n" +
                        "第十七条 如委托投资标的提前到期，项目方提前向甲方支付相应的本金和收益，此种情况不视为乙方违约，提前支付的本金和收益的计算以委托投资标的的计算方式为准。\n" +
                        "第十八条 本协议有效期内，任何一方未履行或未完全履行本协议项下的任何义务，均构成违约，应按法律规定及本协议的约定对守约方承担违约责任。\n" +
                        "第七章 法律适用与争议解决\n" +
                        "第十九条 本协议适用中华人民共和国法律。\n" +
                        "第二十条 争议解决\n" +
                        "1、鉴于本协议系通过会员服务系统电子协议签署系统签署，各方一致同意，丙方所在地为协议签订地。\n" +
                        "2、本协议履行过程中如发生争议，可通过协商解决，协商不成的，可向本协议签订地人民法院提起诉讼。\n" +
                        "第八章 通知\n" +
                        "第二十一条 本协议任何一方根据本协议约定做出的通知和/或文件均应以书面形式做出，可由专人送达、挂号邮递、特快专递、短信、站内信或通过会员服务系统发布公告等方式传送。\n" +
                        "第二十二条 通知在下列日期视为送达：\n" +
                        "1、专人递送的通知，在专人递送之交付日为有效送达；\n" +
                        "2、以挂号信（付清邮资）发出的通知，在寄出（以邮戳为凭）后的五个工作日内为有效送达；\n" +
                        "3、以特快专递（付清邮资）发出的通知，在寄出（以邮戳为凭）后的三个工作日内为有效送达；\n" +
                        "4、以传真发出的通知，在收到发送成功确认条为有效送达；\n" +
                        "5、以电子邮件发出的通知，在电子邮件进入收件人邮件系统的首次时间为有效送达；\n" +
                        "6、以会员服务系统站内信发出的通知，在通知到达一方会员服务系统账号为有效送达；\n" +
                        "7、以短信方式通知的，在短信发出后视为通知已经送达；\n" +
                        "8、通过会员服务系统发布公告的方式通知的，在会员服务系统发布公告之日为有效送达。\n" +
                        "第九章 其他\n" +
                        "第二十三条 协议各方应当对签署和履行本协议过程中所知晓的其他方的有关经营、财务方面的资料及信息等进行保密，非因交易所需或相关权力部门要求（包括但不限于法院、仲裁机构、监管机构等），不得对外披露。\n" +
                        "第二十四条 除非法律另有规定或本协议另有约定，本协议任何条款的无效或不可执行，不影响其他条款的有效性和可执行性，也不影响整个协议的效力。\n" +
                        "第二十五条 本协议自甲方以网络页面点击确认的方式签订即生效，乙方通过将信息在会员服务系统上进行展示即视为认可协议效力，甲、乙、丙三方均确认本协议的真实性，并认可该形式协议的法律效力。本协议各方同意委托丙方保管所有与之相关的纸质文件或电子信息。\n" +
                        "（本行以下无正文，为签署页）\n" +
                        "\n" +
                        "甲方（委托方）：\n" +
                        "乙方（受托方）：";
                content +=bsideName+"\n";
                content +="丙方（会员服务方）：金联储（北京）网络科技有限公司\n" +
                        "\n" +
                        "签署日期：\n" +
                        "签订地点：杭州江干区";
                Contract contract=new Contract();
                String conId=UUIDCreator.createUUID();
                contract.setConId(conId);
                contract.setConContent(content);
                contract.setLoanUid(loanContract.getUserId());
                System.out.print(content);
                res=contractMapper.insertSelective(contract);
            }
        } catch(Exception e){
            logger.debug(e.getMessage(), e);
        }
        return res;
    }


}
