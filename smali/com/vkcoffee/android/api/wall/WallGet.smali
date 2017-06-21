.class public Lcom/vkcoffee/android/api/wall/WallGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "WallGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/wall/WallGet$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public gphoto:Ljava/lang/String;

.field public gtitle:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 38
    const-string/jumbo v0, "wall.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "filter"

    invoke-virtual {v0, v1, p4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 40
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "owner"    # Z
    .param p5, "needStatus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 27
    const-string/jumbo v0, "execute.wallGetWrapNew"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 31
    if-eqz p4, :cond_0

    .line 32
    const-string/jumbo v0, "filter"

    const-string/jumbo v1, "owner"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/api/wall/WallGet;->uid:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/api/wall/WallGet;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/api/wall/WallGet;

    .prologue
    .line 20
    iget v0, p0, Lcom/vkcoffee/android/api/wall/WallGet;->uid:I

    return v0
.end method

.method private parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    new-instance v0, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v0}, Lcom/vkcoffee/android/AudioFile;-><init>()V

    .line 50
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "aid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 51
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "owner_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 52
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->duration:I

    .line 53
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "artist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/vkcoffee/android/AudioFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/vkcoffee/android/AudioFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->durationS:Ljava/lang/String;

    goto/16 :goto_0

    .line 59
    .end local v0    # "af":Lcom/vkcoffee/android/AudioFile;
    :cond_2
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallGet$Result;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    :try_start_0
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 68
    .local v15, "resp":Lorg/json/JSONObject;
    if-nez v15, :cond_0

    .line 69
    const-string/jumbo v19, "execute_errors"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 70
    .local v3, "e":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v20, "error_code"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v21, "error_msg"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v3    # "e":Lorg/json/JSONObject;
    .end local v15    # "resp":Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    .line 133
    .local v18, "x":Ljava/lang/Exception;
    const-string/jumbo v19, "vk"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/vkcoffee/android/api/APIException;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 135
    new-instance v20, Lcom/vkcoffee/android/api/APIException;

    move-object/from16 v19, v18

    check-cast v19, Lcom/vkcoffee/android/api/APIException;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/api/APIException;->code:I

    move/from16 v19, v0

    check-cast v18, Lcom/vkcoffee/android/api/APIException;

    .end local v18    # "x":Ljava/lang/Exception;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/api/APIException;->descr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v20

    .line 72
    .restart local v15    # "resp":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v7

    .line 73
    .local v7, "items":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "profiles"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 74
    .local v11, "profiles1":Lorg/json/JSONArray;
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "groups"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 77
    .local v12, "profiles2":Lorg/json/JSONArray;
    if-nez v7, :cond_1

    .line 78
    new-instance v13, Lcom/vkcoffee/android/api/wall/WallGet$Result;

    invoke-direct {v13}, Lcom/vkcoffee/android/api/wall/WallGet$Result;-><init>()V

    .line 79
    .local v13, "r":Lcom/vkcoffee/android/api/wall/WallGet$Result;
    new-instance v19, Lcom/vkcoffee/android/data/VKList;

    invoke-direct/range {v19 .. v19}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    .line 80
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "status"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/vkcoffee/android/api/wall/WallGet$Result;->status:Ljava/lang/Object;

    .line 138
    .end local v7    # "items":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v11    # "profiles1":Lorg/json/JSONArray;
    .end local v12    # "profiles2":Lorg/json/JSONArray;
    .end local v13    # "r":Lcom/vkcoffee/android/api/wall/WallGet$Result;
    .end local v15    # "resp":Lorg/json/JSONObject;
    :goto_0
    return-object v13

    .line 84
    .restart local v7    # "items":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .restart local v11    # "profiles1":Lorg/json/JSONArray;
    .restart local v12    # "profiles2":Lorg/json/JSONArray;
    .restart local v15    # "resp":Lorg/json/JSONObject;
    :cond_1
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 85
    .local v8, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .local v10, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 88
    .local v5, "fs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz v11, :cond_4

    .line 89
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 90
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 91
    .local v17, "uid":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string/jumbo v21, "first_name"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string/jumbo v21, "last_name"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    sget v19, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v21

    if-lez v19, :cond_2

    const-string/jumbo v19, "photo_100"

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "sex"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 92
    :cond_2
    const-string/jumbo v19, "photo_50"

    goto :goto_2

    .line 93
    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    .line 97
    .end local v6    # "i":I
    .end local v17    # "uid":I
    :cond_4
    if-eqz v12, :cond_6

    .line 98
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    .line 99
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v17, v0

    .line 101
    .restart local v17    # "uid":I
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    sget v19, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v21

    if-lez v19, :cond_5

    const-string/jumbo v19, "photo_100"

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 102
    :cond_5
    const-string/jumbo v19, "photo_50"

    goto :goto_5

    .line 107
    .end local v6    # "i":I
    .end local v17    # "uid":I
    :cond_6
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "fixed"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 110
    .local v4, "fixed":Lorg/json/JSONObject;
    new-instance v16, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    new-instance v20, Lcom/vkcoffee/android/api/wall/WallGet$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v10, v5}, Lcom/vkcoffee/android/api/wall/WallGet$1;-><init>(Lcom/vkcoffee/android/api/wall/WallGet;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 121
    .local v16, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/NewsEntry;>;"
    if-eqz v4, :cond_7

    .line 122
    new-instance v9, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v9, v4, v8, v10}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 123
    .local v9, "ne":Lcom/vkcoffee/android/NewsEntry;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/data/VKList;->add(ILjava/lang/Object;)V

    .line 125
    .end local v9    # "ne":Lcom/vkcoffee/android/NewsEntry;
    :cond_7
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 126
    .local v13, "r":Lorg/json/JSONObject;
    new-instance v14, Lcom/vkcoffee/android/api/wall/WallGet$Result;

    invoke-direct {v14}, Lcom/vkcoffee/android/api/wall/WallGet$Result;-><init>()V

    .line 127
    .local v14, "res":Lcom/vkcoffee/android/api/wall/WallGet$Result;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    .line 128
    const-string/jumbo v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "status"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/vkcoffee/android/api/wall/WallGet$Result;->status:Ljava/lang/Object;

    .line 129
    const-string/jumbo v19, "postponed_count"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v14, Lcom/vkcoffee/android/api/wall/WallGet$Result;->postponedCount:I

    .line 130
    const-string/jumbo v19, "suggested_count"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v14, Lcom/vkcoffee/android/api/wall/WallGet$Result;->suggestedCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v14

    .line 131
    goto/16 :goto_0

    .line 138
    .end local v4    # "fixed":Lorg/json/JSONObject;
    .end local v5    # "fs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v7    # "items":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v8    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v11    # "profiles1":Lorg/json/JSONArray;
    .end local v12    # "profiles2":Lorg/json/JSONArray;
    .end local v13    # "r":Lorg/json/JSONObject;
    .end local v14    # "res":Lcom/vkcoffee/android/api/wall/WallGet$Result;
    .end local v15    # "resp":Lorg/json/JSONObject;
    .end local v16    # "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/NewsEntry;>;"
    .restart local v18    # "x":Ljava/lang/Exception;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/wall/WallGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/wall/WallGet$Result;

    move-result-object v0

    return-object v0
.end method
