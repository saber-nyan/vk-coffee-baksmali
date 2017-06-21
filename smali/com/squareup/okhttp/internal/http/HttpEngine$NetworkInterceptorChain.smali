.class Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final index:I

.field private final request:Lcom/squareup/okhttp/Request;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;ILcom/squareup/okhttp/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 843
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    .line 844
    return-void
.end method


# virtual methods
.method public connection()Lcom/squareup/okhttp/Connection;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$000(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 14
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 855
    iget v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 857
    iget v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v9, :cond_2

    .line 858
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/Interceptor;

    .line 859
    .local v2, "caller":Lcom/squareup/okhttp/Interceptor;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/squareup/okhttp/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v0

    .line 862
    .local v0, "address":Lcom/squareup/okhttp/Address;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v9

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getUriPort()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 864
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must retain the same host and port"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 869
    :cond_1
    iget v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-le v9, v11, :cond_2

    .line 870
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 875
    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v2    # "caller":Lcom/squareup/okhttp/Interceptor;
    :cond_2
    iget v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v10, v10, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v10}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 877
    new-instance v3, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget v10, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v3, v9, v10, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;ILcom/squareup/okhttp/Request;)V

    .line 878
    .local v3, "chain":Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/squareup/okhttp/internal/http/HttpEngine;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/okhttp/Interceptor;

    .line 879
    .local v6, "interceptor":Lcom/squareup/okhttp/Interceptor;
    invoke-interface {v6, v3}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;

    move-result-object v5

    .line 882
    .local v5, "interceptedResponse":Lcom/squareup/okhttp/Response;
    iget v9, v3, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-eq v9, v11, :cond_7

    .line 883
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 890
    .end local v3    # "chain":Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v5    # "interceptedResponse":Lcom/squareup/okhttp/Response;
    .end local v6    # "interceptor":Lcom/squareup/okhttp/Interceptor;
    :cond_3
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$100(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    .line 893
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v9, p1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$202(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    .line 895
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->permitsRequestBody()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 896
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$100(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;

    move-result-object v9

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-interface {v9, p1, v10, v11}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;

    move-result-object v7

    .line 897
    .local v7, "requestBodyOut":Lokio/Sink;
    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    .line 898
    .local v1, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 899
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 902
    .end local v1    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v7    # "requestBodyOut":Lokio/Sink;
    :cond_4
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->access$300(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/Response;

    move-result-object v8

    .line 904
    .local v8, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    .line 905
    .local v4, "code":I
    const/16 v9, 0xcc

    if-eq v4, v9, :cond_5

    const/16 v9, 0xcd

    if-ne v4, v9, :cond_6

    :cond_5
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 906
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 907
    invoke-virtual {v8}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    move-object v5, v8

    .line 910
    .end local v4    # "code":I
    .end local v8    # "response":Lcom/squareup/okhttp/Response;
    :cond_7
    return-object v5
.end method

.method public request()Lcom/squareup/okhttp/Request;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method
