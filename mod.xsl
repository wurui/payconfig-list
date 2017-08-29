<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.payconfig-list">
        <xsl:param name="dsid">e0ee59439b39fcc3</xsl:param>
        <xsl:param name="forward"></xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-payconfig-list" ox-mod="payconfig-list" data-dsid="{$dsid}" data-uid="{login/uid}">
            <ul>
                <xsl:for-each select="data/payconfig-list/i">
                    <li class="list-item" data-id="{_id}">
                        <em class="mainpic"><xsl:value-of select="type"/></em>
                        <div class="op">
                            <button type="button" class="J_del bt-del">删除</button>
                        </div>
                        <h3 class="title">
                            <a href="{$forward}?_id={_id}">
                                <xsl:value-of select="name"/>
                            </a>
                        </h3>
                        <p>
                            type:<span class="inventory"></span>
                            &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
                            biz_id:<b class="price"><xsl:value-of select="biz_id"/></b>
                        </p>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
