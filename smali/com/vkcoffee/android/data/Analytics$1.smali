.class final Lcom/vkcoffee/android/data/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private failCount:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/vkcoffee/android/data/Analytics$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/data/Analytics$1;->failCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 182
    sget-boolean v4, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_0

    .line 183
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending external request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/data/Analytics$1;->val$url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 187
    .local v1, "res":[B
    :try_start_0
    new-instance v4, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v4}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/data/Analytics$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    const-string/jumbo v5, "User-Agent"

    sget-object v6, Lcom/vkcoffee/android/api/APIController;->FUCKING_AD_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 188
    .local v0, "req":Lcom/squareup/okhttp/Request;
    sget-object v4, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 189
    .local v2, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    .end local v0    # "req":Lcom/squareup/okhttp/Request;
    .end local v2    # "resp":Lcom/squareup/okhttp/Response;
    :goto_0
    sget-boolean v4, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_1

    .line 194
    const-string/jumbo v5, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Request done, got "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    array-length v4, v1

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " bytes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    if-nez v1, :cond_2

    iget v4, p0, Lcom/vkcoffee/android/data/Analytics$1;->failCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 197
    iget v4, p0, Lcom/vkcoffee/android/data/Analytics$1;->failCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vkcoffee/android/data/Analytics$1;->failCount:I

    .line 198
    const v4, 0xea60

    invoke-static {p0, v4}, Lcom/vkcoffee/android/api/APIController;->runInBgDelayed(Ljava/lang/Runnable;I)V

    .line 200
    :cond_2
    return-void

    .line 190
    :catch_0
    move-exception v3

    .line 191
    .local v3, "x":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 194
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method
