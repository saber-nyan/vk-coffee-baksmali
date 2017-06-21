.class public Lcom/vkcoffee/android/api/video/VideoGetTabs;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "VideoGetTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "owner_id"    # I

    .prologue
    .line 13
    const-string/jumbo v0, "execute.videoGetTabs"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;
    .locals 3
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    .local v0, "response":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;-><init>()V

    .line 21
    .local v1, "result":Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;
    const-string/jumbo v2, "albums"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->albumsCount:I

    .line 22
    const-string/jumbo v2, "user_videos"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->userVideosCount:I

    .line 23
    const-string/jumbo v2, "uploaded"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;->uploadedCount:I

    .line 24
    return-object v1
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/video/VideoGetTabs;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/video/VideoGetTabs$Result;

    move-result-object v0

    return-object v0
.end method
