.class Lcom/vkcoffee/android/api/wall/LikesGetList$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "LikesGetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/wall/LikesGetList;-><init>(IIIIIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 3
    .param p1, "jp"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v1, "profile"

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    invoke-direct {v0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 31
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 27
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 28
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const-string/jumbo v1, "photo_200"

    :goto_1
    const-string/jumbo v2, "photo_100"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    goto :goto_0

    .line 28
    :cond_1
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const-string/jumbo v1, "photo_100"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "photo_50"

    goto :goto_1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/LikesGetList$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method
