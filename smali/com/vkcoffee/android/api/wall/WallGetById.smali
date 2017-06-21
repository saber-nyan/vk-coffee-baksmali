.class public Lcom/vkcoffee/android/api/wall/WallGetById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "WallGetById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<[",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public gphoto:Ljava/lang/String;

.field public gtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "idsArray"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 20
    const-string/jumbo v0, "wall.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "posts"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "extended"

    invoke-virtual {p0, v0, v3}, Lcom/vkcoffee/android/api/wall/WallGetById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "photo_100,photo_50,sex"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkcoffee/android/api/wall/WallGetById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    return-void
.end method

.method private doParse(Landroid/util/SparseArray;Landroid/util/SparseArray;Lorg/json/JSONArray;)[Lcom/vkcoffee/android/NewsEntry;
    .locals 4
    .param p3, "items"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")[",
            "Lcom/vkcoffee/android/NewsEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Lcom/vkcoffee/android/NewsEntry;

    .line 66
    .local v1, "result":[Lcom/vkcoffee/android/NewsEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    new-instance v2, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallGetById;->parse(Lorg/json/JSONObject;)[Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)[Lcom/vkcoffee/android/NewsEntry;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 28
    :try_start_0
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "items"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "items":Lorg/json/JSONArray;
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "profiles"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 30
    .local v5, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "groups"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "groups":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 33
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/vkcoffee/android/NewsEntry;

    .line 60
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v5    # "profiles":Lorg/json/JSONArray;
    :goto_0
    return-object v8

    .line 36
    .restart local v0    # "groups":Lorg/json/JSONArray;
    .restart local v2    # "items":Lorg/json/JSONArray;
    .restart local v5    # "profiles":Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .local v3, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .local v4, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 41
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 42
    .local v6, "uid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "first_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "last_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    const-string/jumbo v8, "photo_100"

    :goto_2
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 43
    :cond_1
    const-string/jumbo v8, "photo_50"

    goto :goto_2

    .line 47
    .end local v1    # "i":I
    .end local v6    # "uid":I
    :cond_2
    if-eqz v0, :cond_4

    .line 48
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v6, v8

    .line 50
    .restart local v6    # "uid":I
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    const-string/jumbo v8, "photo_100"

    :goto_4
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 51
    :cond_3
    const-string/jumbo v8, "photo_50"

    goto :goto_4

    .line 55
    .end local v1    # "i":I
    .end local v6    # "uid":I
    :cond_4
    invoke-direct {p0, v3, v4, v2}, Lcom/vkcoffee/android/api/wall/WallGetById;->doParse(Landroid/util/SparseArray;Landroid/util/SparseArray;Lorg/json/JSONArray;)[Lcom/vkcoffee/android/NewsEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 57
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5    # "profiles":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 58
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    invoke-static {v8, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
