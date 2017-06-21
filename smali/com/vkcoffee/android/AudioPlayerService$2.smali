.class Lcom/vkcoffee/android/AudioPlayerService$2;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerService;->lambda$playNewFile$227()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$2;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error1"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 519
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error getting file url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$2;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$2$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method

.method synthetic lambda$fail$226()V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$2;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x1

    const/16 v2, -0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/AudioPlayerService;->onError(II)Z

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$2;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$2;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$2;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$2300(Lcom/vkcoffee/android/AudioPlayerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
