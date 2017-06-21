.class public Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GiftsResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "users.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "user_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "can_see_gifts,first_name_gen"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    .locals 3
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;-><init>(Lorg/json/JSONObject;)V

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    move-result-object v0

    return-object v0
.end method
