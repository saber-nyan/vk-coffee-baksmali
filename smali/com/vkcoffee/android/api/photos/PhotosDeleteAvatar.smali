.class public Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PhotosDeleteAvatar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field owner:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "ownerID"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "execute.deleteAvatarNew"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    iput p1, p0, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->owner:I

    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    :try_start_0
    iget v0, p0, Lcom/vkcoffee/android/api/photos/PhotosDeleteAvatar;->owner:I

    if-lez v0, :cond_1

    .line 20
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_1
    return-object v0

    .line 20
    :cond_0
    const-string/jumbo v0, "photo_rec"

    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const-string/jumbo v0, "photo_100"

    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 24
    :catch_0
    move-exception v0

    .line 26
    const/4 v0, 0x0

    goto :goto_1
.end method
