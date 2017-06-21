.class public abstract Lcom/loopj/android/http/BinaryHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BinaryHttpResponseHandler"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "BinaryHttpResponseHandler"

    const-string v1, "Constructor passed allowedContentTypes was null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public final sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 16
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 104
    .local v9, "status":Lorg/apache/http/StatusLine;
    const-string v10, "Content-Type"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 105
    .local v4, "contentTypeHeaders":[Lorg/apache/http/Header;
    array-length v10, v4

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 107
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const-string v15, "None, or more than one, Content-Type Header found!"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 143
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v10, 0x0

    aget-object v3, v4, v10

    .line 119
    .local v3, "contentTypeHeader":Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 120
    .local v6, "foundAllowedContentType":Z
    invoke-virtual/range {p0 .. p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 122
    .local v1, "anAllowedContentType":Ljava/lang/String;
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    const/4 v6, 0x1

    .line 120
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 125
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v10, "BinaryHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given pattern is not valid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 129
    .end local v1    # "anAllowedContentType":Ljava/lang/String;
    .end local v5    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_2
    if-nez v6, :cond_3

    .line 131
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const-string v15, "Content-Type not allowed!"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-super/range {p0 .. p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method
