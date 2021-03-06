{% raw %}
<xsl:template match="part[@type='1_n_2']" mode="typespecific">
    <xsl:apply-templates select="choices" mode="one"/>
{% endraw %}
    {% include 'xslt/feedback_icon.xslt' %}
{% raw %}
</xsl:template>
<xsl:template match="part[@type='1_n_2']" mode="correctanswer">
    <span class="correct-answer" data-bind="visibleIf: showCorrectAnswer, typeset: showCorrectAnswer">
        <xsl:apply-templates select="choices" mode="correctanswer"/>
    </span>
</xsl:template>
{% endraw %}
