.class public Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;
.super Ljava/lang/Object;
.source "TtmlHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;
    }
.end annotation


# static fields
.field public static final NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

.field public static final SMPTE_TT_NAMESPACE:Ljava/lang/String; = "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"

.field public static final TTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/ns/ttml"

.field static namespacesStyleSheet1:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\n    <xsl:output method=\"text\"/>\n    <xsl:key name=\"kElemByNSURI\"\n             match=\"*[namespace::*[not(. = ../../namespace::*)]]\"\n              use=\"namespace::*[not(. = ../../namespace::*)]\"/>\n    <xsl:template match=\"/\">\n        <xsl:for-each select=\n            \"//namespace::*[not(. = ../../namespace::*)]\n                           [count(..|key(\'kElemByNSURI\',.)[1])=1]\">\n            <xsl:value-of select=\"concat(.,\'&#xA;\')\"/>\n        </xsl:for-each>\n    </xsl:template>\n</xsl:stylesheet>"

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 41
    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->namespacesStyleSheet1:[B

    .line 145
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;)V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->NAMESPACE_CONTEXT:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyLarge(Ljava/io/InputStream;Ljava/io/File;)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/16 v5, 0x4000

    new-array v0, v5, [B

    .line 253
    .local v0, "buffer":[B
    const-wide/16 v2, 0x0

    .line 254
    .local v2, "count":J
    const/4 v1, 0x0

    .line 255
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 256
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 258
    .local v4, "output":Ljava/io/FileOutputStream;
    :goto_0
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v5, v1, :cond_0

    .line 263
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 265
    return-wide v2

    .line 259
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    int-to-long v6, v1

    add-long/2addr v2, v6

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v5

    .line 263
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 264
    throw v5
.end method

.method public static deepCopyDocument(Lorg/w3c/dom/Document;Ljava/io/File;)V
    .locals 11
    .param p0, "ttml"    # Lorg/w3c/dom/Document;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v6

    .line 231
    .local v6, "xPathfactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v6}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v7

    .line 232
    .local v7, "xpath":Ljavax/xml/xpath/XPath;
    const-string/jumbo v8, "//*/@backgroundImage"

    invoke-interface {v7, v8}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v3

    .line 233
    .local v3, "expr":Ljavax/xml/xpath/XPathExpression;
    sget-object v8, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v3, p0, v8}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    .line 234
    .local v5, "nl":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v4, v8, :cond_0

    .line 241
    new-instance v8, Ljava/net/URI;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->copyLarge(Ljava/io/InputStream;Ljava/io/File;)J

    .line 248
    return-void

    .line 235
    :cond_0
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 236
    .local v0, "backgroundImage":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 237
    .local v1, "backgroundImageUri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_1

    .line 238
    new-instance v8, Ljava/net/URI;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->copyLarge(Ljava/io/InputStream;Ljava/io/File;)J
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "backgroundImage":Lorg/w3c/dom/Node;
    .end local v1    # "backgroundImageUri":Ljava/net/URI;
    .end local v3    # "expr":Ljavax/xml/xpath/XPathExpression;
    .end local v4    # "i":I
    .end local v5    # "nl":Lorg/w3c/dom/NodeList;
    .end local v6    # "xPathfactory":Ljavax/xml/xpath/XPathFactory;
    .end local v7    # "xpath":Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljavax/xml/xpath/XPathExpressionException;
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 245
    .end local v2    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :catch_1
    move-exception v2

    .line 246
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static getAllNamespaces(Lorg/w3c/dom/Document;)[Ljava/lang/String;
    .locals 8
    .param p0, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 72
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 75
    .local v3, "tf":Ljavax/xml/transform/TransformerFactory;
    :try_start_0
    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    sget-object v7, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->namespacesStyleSheet1:[B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v4

    .line 76
    .local v4, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 77
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v5, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v5

    .line 80
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "sw":Ljava/io/StringWriter;
    .end local v4    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 82
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getEndTime(Lorg/w3c/dom/Node;)J
    .locals 6
    .param p0, "p"    # Lorg/w3c/dom/Node;

    .prologue
    .line 214
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "time":J
    move-object v0, p0

    .line 216
    .local v0, "current":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    .line 222
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "end"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "end"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 225
    .end local v2    # "time":J
    :cond_1
    return-wide v2

    .line 217
    .restart local v2    # "time":J
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
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

    goto :goto_0
.end method

.method public static getStartTime(Lorg/w3c/dom/Node;)J
    .locals 6
    .param p0, "p"    # Lorg/w3c/dom/Node;

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    .line 200
    .local v2, "time":J
    move-object v0, p0

    .line 201
    .local v0, "current":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    .line 207
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTime(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 210
    .end local v2    # "time":J
    :cond_1
    return-wide v2

    .line 202
    .restart local v2    # "time":J
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v4, "begin"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
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

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/xpath/XPathExpressionException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 57
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 58
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 59
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const-string/jumbo v7, "C:\\dev\\mp4parser\\a.xml"

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 60
    .local v3, "doc":Lorg/w3c/dom/Document;
    const/16 v7, 0x3c

    invoke-static {v3, v7}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlSegmenter;->split(Lorg/w3c/dom/Document;I)Ljava/util/List;

    move-result-object v5

    .line 64
    .local v5, "split":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Document;>;"
    new-instance v6, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlTrackImpl;

    const-string/jumbo v7, "a.xml"

    invoke-direct {v6, v7, v5}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlTrackImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    .local v6, "t":Lcom/googlecode/mp4parser/authoring/Track;
    new-instance v4, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 66
    .local v4, "m":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    .line 67
    new-instance v7, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v7, v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    .line 68
    .local v1, "c":Lcom/coremedia/iso/boxes/Container;
    new-instance v7, Ljava/io/FileOutputStream;

    const-string/jumbo v8, "output.mp4"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 69
    return-void
.end method

.method public static pretty(Lorg/w3c/dom/Document;Ljava/io/OutputStream;I)V
    .locals 7
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 177
    .local v4, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    const/4 v3, 0x0

    .line 179
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 183
    const-string/jumbo v5, "encoding"

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-lez p2, :cond_0

    .line 185
    const-string/jumbo v5, "indent"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v5, "{http://xml.apache.org/xslt}indent-amount"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local v1, "result":Ljavax/xml/transform/Result;
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 191
    .local v2, "source":Ljavax/xml/transform/Source;
    :try_start_1
    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    return-void

    .line 180
    .end local v1    # "result":Ljavax/xml/transform/Result;
    .end local v2    # "source":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 192
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    .restart local v1    # "result":Ljavax/xml/transform/Result;
    .restart local v2    # "source":Ljavax/xml/transform/Source;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static toTime(Ljava/lang/String;)J
    .locals 18
    .param p0, "expr"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string/jumbo v11, "(-?)([0-9][0-9]):([0-9][0-9]):([0-9][0-9])([\\.:][0-9][0-9]?[0-9]?)?"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 114
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 115
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 116
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "minus":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "hours":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "minutes":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "seconds":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "fraction":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 122
    const-string/jumbo v2, ".000"

    .line 125
    :cond_0
    const-string/jumbo v11, ":"

    const-string/jumbo v12, "."

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long v8, v12, v14

    .line 127
    .local v8, "ms":J
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 128
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 129
    const-string/jumbo v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 130
    long-to-double v12, v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "0"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, ":"

    const-string/jumbo v15, "."

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-long v8, v12

    .line 135
    :goto_0
    const-string/jumbo v11, "-"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, -0x1

    :goto_1
    int-to-long v12, v11

    mul-long/2addr v12, v8

    return-wide v12

    .line 132
    :cond_1
    long-to-double v12, v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "0"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-long v8, v12

    goto :goto_0

    .line 135
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 137
    .end local v2    # "fraction":Ljava/lang/String;
    .end local v3    # "hours":Ljava/lang/String;
    .end local v5    # "minus":Ljava/lang/String;
    .end local v6    # "minutes":Ljava/lang/String;
    .end local v8    # "ms":J
    .end local v10    # "seconds":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Cannot match \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' to time expression"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static toTimeExpression(J)Ljava/lang/String;
    .locals 2
    .param p0, "ms"    # J

    .prologue
    .line 90
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;->toTimeExpression(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeExpression(JI)Ljava/lang/String;
    .locals 12
    .param p0, "ms"    # J
    .param p2, "frames"    # I

    .prologue
    .line 94
    const-wide/16 v8, 0x0

    cmp-long v3, p0, v8

    if-ltz v3, :cond_0

    const-string/jumbo v2, ""

    .line 95
    .local v2, "minus":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 97
    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long v0, v8, v10

    .line 98
    .local v0, "hours":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 100
    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 101
    .local v4, "minutes":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 103
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 104
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long/2addr p0, v8

    .line 105
    if-ltz p2, :cond_1

    .line 106
    const-string/jumbo v3, "%s%02d:%02d:%02d:%d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_1
    return-object v3

    .line 94
    .end local v0    # "hours":J
    .end local v2    # "minus":Ljava/lang/String;
    .end local v4    # "minutes":J
    .end local v6    # "seconds":J
    :cond_0
    const-string/jumbo v2, "-"

    goto :goto_0

    .line 108
    .restart local v0    # "hours":J
    .restart local v2    # "minus":Ljava/lang/String;
    .restart local v4    # "minutes":J
    .restart local v6    # "seconds":J
    :cond_1
    const-string/jumbo v3, "%s%02d:%02d:%02d.%03d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
