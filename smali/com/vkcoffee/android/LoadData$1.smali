.class Lcom/vkcoffee/android/LoadData$1;
.super Ljava/lang/Object;
.source "LoadData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LoadData;->notGood(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LoadData;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LoadData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/LoadData$1;->this$0:Lcom/vkcoffee/android/LoadData;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 68
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 69
    .local v0, "checkReq":Lcom/loopj/android/http/RequestParams;
    const-string v2, "access_token"

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "GuPuoTSnqOUk2/JO/XlDuA=="

    invoke-static {v2}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "A3du+2yFJQPbEt75vxojKw=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "f2/Kj2BMaK9h4UBXsWwhyg=="

    invoke-static {v2}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/LoadData$1;->this$0:Lcom/vkcoffee/android/LoadData;

    invoke-static {v3}, Lcom/vkcoffee/android/LoadData;->access$2(Lcom/vkcoffee/android/LoadData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "4fMr+8xjoHoCY+tXH597PA=="

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 75
    .local v1, "online":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "4fMr+8xjoHoCY+tXH597PA=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/LoadData$1$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/LoadData$1$1;-><init>(Lcom/vkcoffee/android/LoadData$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 116
    return-void
.end method
