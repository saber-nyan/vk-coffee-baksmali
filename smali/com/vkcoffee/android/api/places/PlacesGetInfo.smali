.class public Lcom/vkcoffee/android/api/places/PlacesGetInfo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PlacesGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "placeID"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "execute.getPlaceInfoNew"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "place_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/places/PlacesGetInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/places/PlacesGetInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 22
    :try_start_0
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 23
    .local v5, "r":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/GeoPlace;

    const-string/jumbo v9, "place"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/vkcoffee/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    .line 24
    .local v4, "place":Lcom/vkcoffee/android/GeoPlace;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "user_photos"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo v9, "group"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    .local v1, "g":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;

    invoke-direct {v6}, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;-><init>()V

    .line 31
    .local v6, "res":Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    iput-object v4, v6, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    .line 32
    iput-object v3, v6, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->userPhotos:Ljava/util/ArrayList;

    .line 33
    if-eqz v1, :cond_1

    const-string/jumbo v9, "status"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    iput-object v9, v6, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->groupStatus:Ljava/lang/String;

    .line 34
    if-eqz v1, :cond_2

    const-string/jumbo v9, "photo_100"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v6, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->groupPhoto:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "place":Lcom/vkcoffee/android/GeoPlace;
    .end local v5    # "r":Lorg/json/JSONObject;
    .end local v6    # "res":Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    :goto_3
    return-object v6

    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "g":Lorg/json/JSONObject;
    .restart local v2    # "i":I
    .restart local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "place":Lcom/vkcoffee/android/GeoPlace;
    .restart local v5    # "r":Lorg/json/JSONObject;
    .restart local v6    # "res":Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    :cond_1
    move-object v9, v8

    .line 33
    goto :goto_1

    :cond_2
    move-object v9, v8

    .line 34
    goto :goto_2

    .line 36
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "place":Lcom/vkcoffee/android/GeoPlace;
    .end local v5    # "r":Lorg/json/JSONObject;
    .end local v6    # "res":Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
    :catch_0
    move-exception v7

    .line 37
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v8

    .line 39
    goto :goto_3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/places/PlacesGetInfo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;

    move-result-object v0

    return-object v0
.end method
