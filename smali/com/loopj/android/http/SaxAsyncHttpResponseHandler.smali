.class public abstract Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SaxAsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/xml/sax/helpers/DefaultHandler;",
        ">",
        "Lcom/loopj/android/http/AsyncHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SaxAsyncHttpResponseHandler"


# instance fields
.field private handler:Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;, "Lcom/loopj/android/http/SaxAsyncHttpResponseHandler<TT;>;"
    .local p1, "t":Lorg/xml/sax/helpers/DefaultHandler;, "TT;"
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/Error;

    const-string v1, "null instance of <T extends DefaultHandler> passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 81
    return-void
.end method


# virtual methods
.method protected getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;, "Lcom/loopj/android/http/SaxAsyncHttpResponseHandler<TT;>;"
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 95
    .local v3, "instream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 96
    .local v1, "inputStreamReader":Ljava/io/InputStreamReader;
    if-eqz v3, :cond_0

    .line 98
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 99
    .local v5, "sfactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 100
    .local v6, "sparser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 101
    .local v4, "rssReader":Lorg/xml/sax/XMLReader;
    iget-object v7, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v4, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 102
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v2, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v4, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 110
    if-eqz v2, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 118
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "rssReader":Lorg/xml/sax/XMLReader;
    .end local v5    # "sfactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "sparser":Ljavax/xml/parsers/SAXParser;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 104
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "instream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    const-string v7, "SaxAsyncHttpResponseHandler"

    const-string v8, "getResponseData exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v7

    goto :goto_0

    .line 106
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2
    :try_start_5
    const-string v7, "SaxAsyncHttpResponseHandler"

    const-string v8, "getResponseData exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 110
    if-eqz v1, :cond_0

    .line 112
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 113
    :catch_3
    move-exception v7

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 110
    if-eqz v1, :cond_1

    .line 112
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 113
    :cond_1
    :goto_4
    throw v7

    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "rssReader":Lorg/xml/sax/XMLReader;
    .restart local v5    # "sfactory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v6    # "sparser":Ljavax/xml/parsers/SAXParser;
    :catch_4
    move-exception v7

    goto :goto_0

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "rssReader":Lorg/xml/sax/XMLReader;
    .end local v5    # "sfactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "sparser":Ljavax/xml/parsers/SAXParser;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 109
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "rssReader":Lorg/xml/sax/XMLReader;
    .restart local v5    # "sfactory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v6    # "sparser":Ljavax/xml/parsers/SAXParser;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 106
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 104
    .end local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    .local p0, "this":Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;, "Lcom/loopj/android/http/SaxAsyncHttpResponseHandler<TT;>;"
    iget-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 148
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/http/Header;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 132
    .local p0, "this":Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;, "Lcom/loopj/android/http/SaxAsyncHttpResponseHandler<TT;>;"
    iget-object v0, p0, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->handler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SaxAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 133
    return-void
.end method
