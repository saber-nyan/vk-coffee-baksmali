.class Lcom/vkcoffee/android/VideoPlayerActivity$20;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->startFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field final synthetic val$maxQuality:I

.field final synthetic val$vigo:Lcom/vkcoffee/android/media/Vigo;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Lcom/vkcoffee/android/media/Vigo;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$vigo:Lcom/vkcoffee/android/media/Vigo;

    iput p3, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$maxQuality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 561
    :try_start_0
    const-string/jumbo v9, "http://api.vigo.ru/uxzoom/1/network_status"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 562
    .local v0, "bldr":Landroid/net/Uri$Builder;
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$vigo:Lcom/vkcoffee/android/media/Vigo;

    if-eqz v9, :cond_0

    .line 563
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$vigo:Lcom/vkcoffee/android/media/Vigo;

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/media/Vigo;->fillUrlParams(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 565
    :cond_0
    const-string/jumbo v9, "bytes"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 566
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$maxQuality:I

    if-gt v2, v9, :cond_1

    .line 567
    const-string/jumbo v9, "quality"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v7}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v9, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v9}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 572
    invoke-virtual {v9, v7}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v9

    .line 573
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v5

    .line 574
    .local v5, "req":Lcom/squareup/okhttp/Request;
    sget-object v9, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v9}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    .line 575
    .local v1, "client":Lcom/squareup/okhttp/OkHttpClient;
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v10, "vigo_connect_timeout"

    const/16 v11, 0x3e8

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v10, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11, v9}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 576
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/VideoPlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string/jumbo v10, "vigo_read_timeout"

    const/16 v11, 0x3e8

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v10, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11, v9}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 577
    const-wide/16 v10, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11, v9}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 578
    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "res":Ljava/lang/String;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 581
    .local v3, "o":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const-string/jumbo v10, "supported"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3502(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 582
    const-string/jumbo v9, "load_info"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "quality"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 583
    .local v4, "q":I
    const/4 v9, 0x2

    if-lt v4, v9, :cond_2

    iget v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$maxQuality:I

    add-int/lit8 v9, v9, 0x2

    if-lt v4, v9, :cond_3

    .line 584
    :cond_2
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget v10, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$maxQuality:I

    invoke-static {v9, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 593
    .end local v0    # "bldr":Landroid/net/Uri$Builder;
    .end local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v2    # "i":I
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v4    # "q":I
    .end local v5    # "req":Lcom/squareup/okhttp/Request;
    .end local v6    # "res":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 586
    .restart local v0    # "bldr":Landroid/net/Uri$Builder;
    .restart local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .restart local v2    # "i":I
    .restart local v3    # "o":Lorg/json/JSONObject;
    .restart local v4    # "q":I
    .restart local v5    # "req":Lcom/squareup/okhttp/Request;
    .restart local v6    # "res":Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    add-int/lit8 v10, v4, -0x2

    invoke-static {v9, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoPlayerActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 588
    .end local v0    # "bldr":Landroid/net/Uri$Builder;
    .end local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v2    # "i":I
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v4    # "q":I
    .end local v5    # "req":Lcom/squareup/okhttp/Request;
    .end local v6    # "res":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 589
    .local v8, "x":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3502(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 590
    const-string/jumbo v9, "vk"

    const-string/jumbo v10, "error sending quality request"

    invoke-static {v9, v10, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    iget-object v9, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget v10, p0, Lcom/vkcoffee/android/VideoPlayerActivity$20;->val$maxQuality:I

    invoke-static {v9, v10}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    goto :goto_1
.end method
