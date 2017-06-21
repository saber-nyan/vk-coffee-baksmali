.class Lcom/vkcoffee/android/AudioPlayerService$3;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerService;->nextTrack()V
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
    .line 922
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$3;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 938
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 922
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 925
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 926
    .local v0, "audio":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 927
    new-instance v1, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 928
    .local v1, "f":Lcom/vkcoffee/android/AudioFile;
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService$3;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerService;->access$100(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService$3;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService$3;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerService;->access$100(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService$3;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkcoffee/android/AudioPlayerService;->access$1300(Lcom/vkcoffee/android/AudioPlayerService;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/AudioFile;

    invoke-static {v4, v3}, Lcom/vkcoffee/android/AudioPlayerService;->access$300(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v0    # "audio":Lorg/json/JSONObject;
    .end local v1    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v2

    .line 932
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
