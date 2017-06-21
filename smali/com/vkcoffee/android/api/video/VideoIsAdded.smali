.class public Lcom/vkcoffee/android/api/video/VideoIsAdded;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoIsAdded.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "targetID"    # I
    .param p2, "ownerID"    # I
    .param p3, "videoID"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "execute.isVideoAdded"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "taget_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 21
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoIsAdded;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
