.class public Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PlacesGetCheckinProfiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "placeID"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 13
    const-string/jumbo v0, "execute.getPlaceCheckinsNew"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "place_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,photo_100,photo_200,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;-><init>()V

    .line 24
    .local v0, "r":Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;
    new-instance v2, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v2, v0, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;->users:Lcom/vkcoffee/android/data/VKList;

    .line 25
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "new_offset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;->newOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "r":Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v0, 0x0

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;

    move-result-object v0

    return-object v0
.end method
