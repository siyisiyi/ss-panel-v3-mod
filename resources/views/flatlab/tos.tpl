{include file='header_new.tpl'}

    <style type="text/css">
        .glyphicon {
            font-size: 2em;
        }

        #main {
            margin-top: 100px;
            min-height: 500px;
        }

        #page-head {
            display: inline;
            margin-left: 4px;
        }

        .img-responsive {
            margin-top: 3em;
            margin-bottom: 3em;
        }

        .dns {
            margin-top: 0.4em;
            margin-bottom: 0.6em;
            font-weight: bold;
            font-size: 2em;
            text-align: center;
            padding: 1em;
        }

        .bold {
            font-weight: bold;
            font-size: 1.3em;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1" id="main">
                <div>
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                    <h3 id="page-head">用户协议 Terms of Service</h3>
                </div>
                <hr>
                <p>
                    欢迎使用{$config["appName"]}产品及服务（以下简称「本服务」）！在使用本站服务前您应当阅读本服务协议并充分理解各条款内容，特别是免除或者限制责任的条款，如果您注册并使用我们的服务，表示您同意我们的服务协议。限制、免责条款可能以加粗形式提示您注意。
                </p>
                <h3>隐私</h3>
                <p>
                    <ol>
                        <li>用户注册时候需要提供邮箱以及密码，并自行保管。邮箱为用户的唯一凭证。</li>
                        <li>本站会加密存储用户密码，尽量保证数据安全，但并不保证这些信息的绝对安全。</li>
                    </ol>
                </p>
                <h3>使用条款</h3>
                <h5>一、关于本服务</h5>
                <p class="bold">本服务的内容</p>
                <p>
                    本服务内容是指「{$config["appName"]}」通过合法的互联网技术，向个人用户提供跨平台的数据加密传输服务。
                </p>
                <p class="bold">本服务的用途</p>
                <p>
                    <ol>
                        <li>本服务仅允许个人非商业化使用。</li>
                        <li>本服务不可用于危害互联网安全、侵犯他人知识产权等违法行为，包括但不限于: 
                            <ul>
                                <li>
                                    P2P下载: 迅雷, 电驴, BitTorrent, Private Tracker等；
                                </li>
                                <li>
                                    扫描端口，群发垃圾邮件；
                                </li>
                                <li>
                                    政治言论与政治活动;
                                </li>
                            </ul>
                        </li>
                        <li>对于免费用户，我们有权在不通知的情况下删除账户。</li>
                        <li>任何违法使用条款的用户，我们将会删除违规账户并没收使用本站服务的权利。</li>
                    </ol>
                </p>
                <p class="bold">本服务的可用性</p>
                <p>
                    <ol>
                        <li>
                            如因服务器基础线路故障、检修等问题导致服务中断，我们将给予用户一定的服务时长补偿。
                        </li>
                        <li>
                            由于用户网络环境和终端的复杂性，我们无法确保正确配置的终端一段可以使用本服务。最终服务的可用性会以「{$config["appName"]}」官方数据为准。
                        </li>
                        <li>
                            由于各种原因，我们无法确保服务的持续可用。因此，您因本服务的短暂或长时间中断而遭受的损失，我们不会对此进行任何赔偿。
                        </li>
                    </ol>
                </p>
                <p class="bold">本服务许可的范围</p>
                <p>
                    「{$config["appName"]}」给予您个人的、非商业化的、不可转让及非排他性的使用许可，以使用本服务。您可以以非商业的目的在多台设备上配置本服务，但同时使用的设备不可超过 5 台，否则账户将会被停止使用。
                </p>
                <h5>二、购买与退款</h5>
                <p>
                    <ol>
                        <li>
                            您可以直接从「{$config["appName"]}」的网站上购买本服务，也可以从授权的第三方购买。授权第三方有效性的解释归「{$config["appName"]}」所有。
                        </li>
                        <li>
                            鉴于产品的特殊性，我们仅接受首次购买后 72 小时内的全额退款申请。
                        </li>
                        <li>
                            如因账户退款申请时限超过 72 小时，或使用账户时有任何违反本服务协议内容的行为，我们将不会为您办理退款。
                        </li>
                    </ol>
                </p>
                <h5>三、服务的更新</h5>
                <ol>
                    <li>
                        为了改善用户体验，完善服务内容，「{$config["appName"]}」将不断开发新的服务，并不时提供服务或软件更新（这些更新可能会以替换、修改、功能强化、版本升级等形式提交给您）。
                    </li>
                    <li>
                        随着本服务新版本发布，旧版本的服务可能会随之无法使用。我们不保证旧版产品的可用性，请您随时核对并使用最新版本。
                    </li>
                </ol>
                <h5>四、第三方软件或技术</h5>
                <ol>
                    <li>
                        「{$config["appName"]}」使用的第三方软件或技术（包括本服务可能使用的开源代码和公共领域代码等，下同）已经获得合法授权。
                    </li>
                    <li>
                        您理解并同意：「{$config["appName"]}」为了向您提供有效的服务，会使用您终端设备的处理器和带宽等资源。本服务所示套餐内流量为内部计费设置，不代表您使用过程产生的数据流量费用，用户需自行向运营商了解相关资费信息，并自行承担相关费用。
                    </li>
                    <li>
                        因为使用的第三方软件或技术而引发的任何纠纷，应由该对应的第三方负责解决，「{$config["appName"]}」不承担任何责任，亦无法对第三方软件或技术提供客户支持，若您需要获取支持，请与对应的第三方联系。
                    </li>
                </ol>
                <h5>五、其他</h5>
                <ol>
                    <li>
                        您使用本服务即视为您已阅读并同意受本协议的约束。「{$config["appName"]}」有权在必要时修改本协议条款。您可以在网站中查阅相关协议的最新条款。本协议条款变更后，如果您继续使用「{$config["appName"]}」，即视为您已接受修改后的协议。如果您不接受修改后的协议，应当停止使用本服务。
                    </li>
                    <li>
                        本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。
                    </li>
                </ol>
                <p>更新日期: 2016年8月20日</p>

            </div>
        </div>
    </div>





{include file='footer_new.tpl'}