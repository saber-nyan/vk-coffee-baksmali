.class public Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;
.super Ljava/lang/Object;
.source "TtmlSegmenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V
    .locals 8
    .param p0, "p"    # Lorg/w3c/dom/Node;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "amount"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 104
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 105
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "oldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long v2, v4, p2

    .line 107
    .local v2, "nuTime":J
    const/4 v0, 0x0

    .line 108
    .local v0, "frames":I
    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const/4 v0, -0x1

    .line 117
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v2, v3, v0}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(JI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 120
    .end local v0    # "frames":I
    .end local v1    # "oldValue":Ljava/lang/String;
    .end local v2    # "nuTime":J
    :cond_0
    return-void

    .line 115
    .restart local v0    # "frames":I
    .restart local v1    # "oldValue":Ljava/lang/String;
    .restart local v2    # "nuTime":J
    :cond_1
    div-long v4, v2, v6

    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    long-to-int v4, v4

    div-int/lit8 v0, v4, 0x2c

    goto :goto_0
.end method

.method public static normalizeTimes(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 7
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v3

    .line 126
    .local v3, "xPathfactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v3}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    .line 127
    .local v5, "xpath":Ljavax/xml/xpath/XPath;
    sget-object v6, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {v5, v6}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 128
    const-string/jumbo v6, "//*[name()=\'p\']"

    invoke-interface {v5, v6}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v4

    .line 129
    .local v4, "xp":Ljavax/xml/xpath/XPathExpression;
    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v4, p0, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/NodeList;

    .line 130
    .local v2, "timedNodes":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 135
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 141
    return-object p0

    .line 131
    :cond_0
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 132
    .local v1, "p":Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->pushDown(Lorg/w3c/dom/Node;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "p":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 137
    .restart local v1    # "p":Lorg/w3c/dom/Node;
    const-string/jumbo v6, "begin"

    invoke-static {v1, v6}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->removeAfterPushDown(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v6, "end"

    invoke-static {v1, v6}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->removeAfterPushDown(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static pushDown(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p0, "p"    # Lorg/w3c/dom/Node;

    .prologue
    .line 145
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "time":J
    move-object v0, p0

    .line 148
    .local v0, "current":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    .line 154
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string/jumbo v5, "begin"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 157
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "end"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "end"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string/jumbo v5, "end"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 161
    :cond_2
    return-void

    .line 149
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto/16 :goto_0
.end method

.method private static removeAfterPushDown(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2
    .param p0, "p"    # Lorg/w3c/dom/Node;
    .param p1, "begin"    # Ljava/lang/String;

    .prologue
    .line 164
    move-object v0, p0

    .line 165
    .local v0, "current":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    return-void

    .line 166
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public static split(Lorg/w3c/dom/Document;I)Ljava/util/List;
    .locals 30
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "splitTimeInSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .prologue
    .line 33
    move/from16 v0, p1

    mul-int/lit16 v13, v0, 0x3e8

    .line 34
    .local v13, "splitTime":I
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v23

    .line 36
    .local v23, "xPathfactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v25

    .line 37
    .local v25, "xpath":Ljavax/xml/xpath/XPath;
    const-string/jumbo v26, "//*[name()=\'p\']"

    invoke-interface/range {v25 .. v26}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v24

    .line 41
    .local v24, "xp":Ljavax/xml/xpath/XPathExpression;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v20, "subDocs":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Document;>;"
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v26

    mul-int v26, v26, v13

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 46
    .local v16, "segmentStartTime":J
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    mul-int v26, v26, v13

    move/from16 v0, v26

    int-to-long v14, v0

    .line 47
    .local v14, "segmentEndTime":J
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Document;

    .line 48
    .local v7, "d":Lorg/w3c/dom/Document;
    sget-object v26, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v7, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/NodeList;

    .line 49
    .local v22, "timedNodes":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .line 51
    .local v21, "thereIsMore":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-lt v10, v0, :cond_3

    .line 81
    invoke-static {v7}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->trimWhitespace(Lorg/w3c/dom/Node;)V

    .line 83
    const-string/jumbo v26, "/*[name()=\'tt\']/*[name()=\'body\'][1]"

    invoke-interface/range {v25 .. v26}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v6

    .line 84
    .local v6, "bodyXP":Ljavax/xml/xpath/XPathExpression;
    sget-object v26, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v26

    invoke-interface {v6, v7, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 85
    .local v5, "body":Lorg/w3c/dom/Element;
    const-string/jumbo v26, "begin"

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "beginTime":Ljava/lang/String;
    const-string/jumbo v26, "end"

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "endTime":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 88
    :cond_1
    const-string/jumbo v26, "begin"

    invoke-static/range {v16 .. v17}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_1
    if-eqz v8, :cond_2

    const-string/jumbo v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 93
    :cond_2
    const-string/jumbo v26, "end"

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_2
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    if-nez v21, :cond_0

    .line 100
    return-object v20

    .line 52
    .end local v4    # "beginTime":Ljava/lang/String;
    .end local v5    # "body":Lorg/w3c/dom/Element;
    .end local v6    # "bodyXP":Ljavax/xml/xpath/XPathExpression;
    .end local v8    # "endTime":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 53
    .local v11, "p":Lorg/w3c/dom/Node;
    invoke-static {v11}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->getStartTime(Lorg/w3c/dom/Node;)J

    move-result-wide v18

    .line 54
    .local v18, "startTime":J
    invoke-static {v11}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->getEndTime(Lorg/w3c/dom/Node;)J

    move-result-wide v8

    .line 56
    .local v8, "endTime":J
    cmp-long v26, v18, v16

    if-gez v26, :cond_4

    cmp-long v26, v8, v16

    if-lez v26, :cond_4

    .line 57
    const-string/jumbo v26, "begin"

    sub-long v28, v16, v18

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v11, v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    .line 58
    move-wide/from16 v18, v16

    .line 62
    :cond_4
    cmp-long v26, v18, v16

    if-ltz v26, :cond_5

    cmp-long v26, v18, v14

    if-gez v26, :cond_5

    cmp-long v26, v8, v14

    if-lez v26, :cond_5

    .line 63
    const-string/jumbo v26, "end"

    sub-long v28, v14, v8

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v11, v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    .line 64
    move-wide/from16 v18, v16

    .line 65
    move-wide v8, v14

    .line 68
    :cond_5
    cmp-long v26, v18, v14

    if-lez v26, :cond_6

    .line 69
    const/16 v21, 0x1

    .line 72
    :cond_6
    cmp-long v26, v18, v16

    if-ltz v26, :cond_7

    cmp-long v26, v8, v14

    if-lez v26, :cond_8

    .line 73
    :cond_7
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 74
    .local v12, "parent":Lorg/w3c/dom/Node;
    invoke-interface {v12, v11}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 51
    .end local v12    # "parent":Lorg/w3c/dom/Node;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 76
    :cond_8
    const-string/jumbo v26, "begin"

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v11, v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    .line 77
    const-string/jumbo v26, "end"

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v11, v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    goto :goto_3

    .line 90
    .end local v11    # "p":Lorg/w3c/dom/Node;
    .end local v18    # "startTime":J
    .restart local v4    # "beginTime":Ljava/lang/String;
    .restart local v5    # "body":Lorg/w3c/dom/Element;
    .restart local v6    # "bodyXP":Ljavax/xml/xpath/XPathExpression;
    .local v8, "endTime":Ljava/lang/String;
    :cond_9
    const-string/jumbo v26, "begin"

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-static {v5, v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 95
    :cond_a
    const-string/jumbo v26, "end"

    move-object/from16 v0, v26

    invoke-static {v5, v0, v14, v15}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->changeTime(Lorg/w3c/dom/Node;Ljava/lang/String;J)V

    goto/16 :goto_2
.end method

.method public static trimWhitespace(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 173
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 174
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 181
    return-void

    .line 175
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 176
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 177
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 179
    :cond_1
    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->trimWhitespace(Lorg/w3c/dom/Node;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
