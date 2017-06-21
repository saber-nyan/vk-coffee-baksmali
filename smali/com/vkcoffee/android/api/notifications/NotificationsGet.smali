.class public Lcom/vkcoffee/android/api/notifications/NotificationsGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NotificationsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private fromCache:Z

.field private mFoundDividers:Z

.field private updateCache:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 8
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z
    .param p4, "foundDividers"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    const-string/jumbo v3, "execute.getNotifications"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v3, "count"

    invoke-virtual {p0, v3, p2}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "start_from"

    invoke-virtual {v3, v4, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 38
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "notifications_filter"

    const-string/jumbo v5, "wall,mentions,comments,likes,reposts,followers,friends,market"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "filters":Ljava/lang/String;
    const-string/jumbo v3, "filters"

    const-string/jumbo v4, ","

    new-array v5, v1, [Ljava/lang/String;

    const/16 v6, 0x7c

    const/16 v7, 0x2c

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 41
    const-string/jumbo v3, "filters"

    const-string/jumbo v4, "_none"

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 43
    :cond_0
    const-string/jumbo v3, "photo_sizes"

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    iput-boolean p4, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->mFoundDividers:Z

    .line 46
    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->updateCache:Z

    .line 47
    iput-boolean p3, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->fromCache:Z

    .line 48
    return-void

    :cond_2
    move v1, v2

    .line 46
    goto :goto_0
.end method

.method private parseGroups(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "groups"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .local p3, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    .line 322
    if-eqz p1, :cond_2

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 324
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "gid":I
    neg-int v3, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    neg-int v4, v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "photo_100"

    :goto_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    new-instance v2, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 328
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    neg-int v3, v0

    iput v3, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 329
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    const-string/jumbo v3, "photo_100"

    :goto_2
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 331
    neg-int v3, v0

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v3, "photo_50"

    goto :goto_1

    .line 330
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const-string/jumbo v3, "photo_50"

    goto :goto_2

    .line 334
    .end local v0    # "gid":I
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    return-void
.end method

.method private parseProfiles(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "profiles"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .local p3, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 337
    if-eqz p1, :cond_3

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 340
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "first_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "last_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_0

    const-string/jumbo v3, "photo_100"

    :goto_1
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 343
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 344
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "first_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "last_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 347
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v5, "sex"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    const-string/jumbo v3, "photo_100"

    :goto_3
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 349
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 341
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v3, "photo_50"

    goto :goto_1

    .line 347
    .restart local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 348
    :cond_2
    const-string/jumbo v3, "photo_50"

    goto :goto_3

    .line 352
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "uid":I
    :cond_3
    return-void
.end method

.method private updateCache(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 356
    :try_start_0
    const-string/jumbo v2, "v"

    iget-object v3, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->params:Ljava/util/HashMap;

    const-string/jumbo v4, "v"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "replies"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 361
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 362
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 363
    .local v1, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected doExec()Lorg/json/JSONObject;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-boolean v5, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->fromCache:Z

    if-eqz v5, :cond_2

    .line 53
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "replies"

    invoke-direct {v1, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v6

    .line 70
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 57
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v3, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    new-array v0, v5, [B

    .line 59
    .local v0, "d":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 61
    new-instance v5, Lorg/json/JSONTokener;

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 62
    .local v2, "o":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->params:Ljava/util/HashMap;

    const-string/jumbo v7, "v"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, "v"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v6

    .line 63
    goto :goto_0

    .line 66
    .end local v0    # "d":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "x":Ljava/lang/Exception;
    :cond_2
    move-object v2, v6

    .line 70
    goto :goto_0
.end method

.method makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "entry"    # Lcom/vkcoffee/android/NewsEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-nez v1, :cond_0

    .line 76
    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v1, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 78
    :cond_0
    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 79
    .local v0, "profile":Lcom/vkcoffee/android/UserProfile;
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v1, p1, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v1, p1, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 83
    :cond_1
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;
    .locals 41
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->updateCache:Z

    if-eqz v6, :cond_0

    .line 88
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->updateCache(Lorg/json/JSONObject;)V

    .line 91
    :cond_0
    const-string/jumbo v6, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    .line 92
    .local v36, "response":Lorg/json/JSONObject;
    const-string/jumbo v6, "items"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 93
    .local v25, "items":Lorg/json/JSONArray;
    const-string/jumbo v6, "profiles"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 94
    .local v34, "profiles":Lorg/json/JSONArray;
    const-string/jumbo v6, "groups"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 95
    .local v20, "groups":Lorg/json/JSONArray;
    const-string/jumbo v6, "last_viewed"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    .line 96
    .local v27, "lastView":I
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v37, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    .line 99
    .local v40, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v28, Landroid/util/SparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    .line 100
    .local v28, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v32, Landroid/util/SparseArray;

    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 102
    .local v32, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v40

    move-object/from16 v3, v28

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->parseProfiles(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v40

    move-object/from16 v3, v28

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->parseGroups(Lorg/json/JSONArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 105
    const/16 v22, 0x0

    .line 106
    .local v22, "id":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_6

    .line 107
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 108
    .local v23, "it":Lorg/json/JSONObject;
    new-instance v16, Lcom/vkcoffee/android/api/models/Notification;

    invoke-direct/range {v16 .. v16}, Lcom/vkcoffee/android/api/models/Notification;-><init>()V

    .line 110
    .local v16, "e":Lcom/vkcoffee/android/api/models/Notification;
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkcoffee/android/api/models/Notification;->id:I

    .line 111
    const-string/jumbo v6, "date"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    iput v6, v0, Lcom/vkcoffee/android/api/models/Notification;->date:I

    .line 112
    const-string/jumbo v6, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/api/models/Notification$Type;->parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/Notification$Type;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 114
    sget-object v6, Lcom/vkcoffee/android/api/notifications/NotificationsGet$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$ParentType:[I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$ParentType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 179
    :goto_1
    sget-object v6, Lcom/vkcoffee/android/api/notifications/NotificationsGet$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$FeedbackType:[I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 221
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$Type;->Unknown:Lcom/vkcoffee/android/api/models/Notification$Type;

    if-eq v6, v7, :cond_5

    .line 222
    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v22, v22, 0x1

    .line 106
    :cond_2
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 116
    :pswitch_0
    const-string/jumbo v6, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "market"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->parseMarket(Lorg/json/JSONObject;Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 117
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    .line 118
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 315
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    .end local v20    # "groups":Lorg/json/JSONArray;
    .end local v21    # "i":I
    .end local v22    # "id":I
    .end local v23    # "it":Lorg/json/JSONObject;
    .end local v25    # "items":Lorg/json/JSONArray;
    .end local v27    # "lastView":I
    .end local v28    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v32    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v34    # "profiles":Lorg/json/JSONArray;
    .end local v36    # "response":Lorg/json/JSONObject;
    .end local v37    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    .end local v40    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v16

    .line 316
    .local v16, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 122
    .local v16, "e":Lcom/vkcoffee/android/api/models/Notification;
    .restart local v20    # "groups":Lorg/json/JSONArray;
    .restart local v21    # "i":I
    .restart local v22    # "id":I
    .restart local v23    # "it":Lorg/json/JSONObject;
    .restart local v25    # "items":Lorg/json/JSONArray;
    .restart local v27    # "lastView":I
    .restart local v28    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v32    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v34    # "profiles":Lorg/json/JSONArray;
    .restart local v36    # "response":Lorg/json/JSONObject;
    .restart local v37    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    .restart local v40    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :pswitch_1
    :try_start_1
    new-instance v6, Lcom/vkcoffee/android/NewsEntry;

    const-string/jumbo v7, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v6, v7, v0, v1}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 123
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    .line 124
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 128
    :pswitch_2
    const-string/jumbo v6, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 129
    .local v31, "parent":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    invoke-direct {v6, v0, v1, v2}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 130
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v7, v7, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    const-string/jumbo v8, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string/jumbo v9, "$1"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 131
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    .line 132
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    .line 134
    sget-object v6, Lcom/vkcoffee/android/api/notifications/NotificationsGet$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$ParentType:[I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->grandParentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$ParentType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_1

    .line 136
    :pswitch_3
    const-string/jumbo v6, "photo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 137
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 141
    :pswitch_4
    const-string/jumbo v6, "video"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 142
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 146
    :pswitch_5
    new-instance v6, Lcom/vkcoffee/android/NewsEntry;

    const-string/jumbo v7, "post"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v6, v7, v0, v1}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 147
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 151
    :pswitch_6
    const-string/jumbo v6, "topic"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 152
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 156
    :pswitch_7
    const-string/jumbo v6, "market"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->parseMarket(Lorg/json/JSONObject;Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 157
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->grandParentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 164
    .end local v31    # "parent":Lorg/json/JSONObject;
    :pswitch_8
    const-string/jumbo v6, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 165
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 169
    :pswitch_9
    const-string/jumbo v6, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 170
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/VideoAttachment;->title:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    .line 171
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->makeKosherPost(Lcom/vkcoffee/android/NewsEntry;Landroid/util/SparseArray;)V

    goto/16 :goto_1

    .line 175
    :pswitch_a
    const-string/jumbo v6, "parent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    goto/16 :goto_1

    .line 181
    :pswitch_b
    const-string/jumbo v6, "feedback"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    .line 182
    .local v17, "fb":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    .line 183
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v26

    if-ge v0, v6, :cond_1

    .line 184
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "from_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 189
    .end local v17    # "fb":Lorg/json/JSONArray;
    .end local v26    # "j":I
    :pswitch_c
    const-string/jumbo v6, "feedback"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    .line 190
    .restart local v17    # "fb":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    .line 191
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v26

    if-ge v0, v6, :cond_1

    .line 192
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "from_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 197
    .end local v17    # "fb":Lorg/json/JSONArray;
    .end local v26    # "j":I
    :pswitch_d
    const-string/jumbo v6, "feedback"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 198
    .local v18, "feedback":Lorg/json/JSONObject;
    const-string/jumbo v6, "from_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->commentUser:Lcom/vkcoffee/android/UserProfile;

    .line 199
    const-string/jumbo v6, "id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "id"

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    iput v6, v0, Lcom/vkcoffee/android/api/models/Notification;->commentID:I

    .line 200
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    if-ne v6, v7, :cond_4

    const-string/jumbo v6, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string/jumbo v8, "$4"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/api/models/Notification;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 199
    :cond_3
    const-string/jumbo v6, "cid"

    goto :goto_6

    .line 200
    :cond_4
    const-string/jumbo v6, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 204
    .end local v18    # "feedback":Lorg/json/JSONObject;
    :pswitch_e
    new-instance v5, Lcom/vkcoffee/android/NewsEntry;

    const-string/jumbo v6, "feedback"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v5, v6, v0, v1}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 205
    .local v5, "entry":Lcom/vkcoffee/android/NewsEntry;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/vkcoffee/android/api/models/Notification;->date:I

    iput v6, v5, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 206
    const/4 v6, 0x0

    const-string/jumbo v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v33

    .line 207
    .local v33, "postDisplayItems":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v26

    if-ge v0, v6, :cond_2

    .line 208
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 209
    .local v24, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    new-instance v29, Lcom/vkcoffee/android/api/models/Notification;

    invoke-direct/range {v29 .. v29}, Lcom/vkcoffee/android/api/models/Notification;-><init>()V

    .line 210
    .local v29, "notification":Lcom/vkcoffee/android/api/models/Notification;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    move-object/from16 v0, v29

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 211
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 212
    move-object/from16 v0, v16

    iget v6, v0, Lcom/vkcoffee/android/api/models/Notification;->date:I

    move-object/from16 v0, v29

    iput v6, v0, Lcom/vkcoffee/android/api/models/Notification;->date:I

    .line 213
    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 214
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v22, v22, 0x1

    .line 207
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 225
    .end local v5    # "entry":Lcom/vkcoffee/android/NewsEntry;
    .end local v24    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .end local v26    # "j":I
    .end local v29    # "notification":Lcom/vkcoffee/android/api/models/Notification;
    .end local v33    # "postDisplayItems":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    :cond_5
    const-string/jumbo v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown notification type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 230
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    .end local v23    # "it":Lorg/json/JSONObject;
    :cond_6
    new-instance v35, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;

    invoke-direct/range {v35 .. v35}, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;-><init>()V

    .line 232
    .local v35, "r":Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;
    const/16 v19, 0x0

    .line 233
    .local v19, "foundNew":Z
    const/16 v21, 0x0

    :goto_9
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_8

    .line 234
    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/api/models/Notification;

    .line 235
    .local v5, "entry":Lcom/vkcoffee/android/api/models/Notification;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->mFoundDividers:Z

    if-nez v6, :cond_c

    .line 236
    iget v6, v5, Lcom/vkcoffee/android/api/models/Notification;->date:I

    move/from16 v0, v27

    if-le v6, v0, :cond_7

    if-nez v19, :cond_7

    .line 237
    const/16 v19, 0x1

    .line 238
    new-instance v16, Lcom/vkcoffee/android/api/models/Notification;

    invoke-direct/range {v16 .. v16}, Lcom/vkcoffee/android/api/models/Notification;-><init>()V

    .line 239
    .restart local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    sget-object v6, Lcom/vkcoffee/android/api/models/Notification$Type;->Header:Lcom/vkcoffee/android/api/models/Notification$Type;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 240
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f0802ca

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/api/models/Notification;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, v37

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 244
    :cond_7
    iget v6, v5, Lcom/vkcoffee/android/api/models/Notification;->date:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_c

    .line 245
    new-instance v16, Lcom/vkcoffee/android/api/models/Notification;

    invoke-direct/range {v16 .. v16}, Lcom/vkcoffee/android/api/models/Notification;-><init>()V

    .line 246
    .restart local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    sget-object v6, Lcom/vkcoffee/android/api/models/Notification$Type;->Header:Lcom/vkcoffee/android/api/models/Notification$Type;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 247
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f0805a0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/api/models/Notification;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const/4 v6, 0x1

    move-object/from16 v0, v35

    iput-boolean v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->foundDividers:Z

    .line 249
    move-object/from16 v0, v37

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    .end local v5    # "entry":Lcom/vkcoffee/android/api/models/Notification;
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    :cond_8
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v39, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v14, "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 259
    .local v15, "curGroup":Lcom/vkcoffee/android/api/models/Notification;
    const/16 v21, 0x0

    :goto_b
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_14

    .line 260
    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/api/models/Notification;

    .line 261
    .restart local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Copy:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    if-eq v6, v7, :cond_d

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    sget-object v7, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->Users:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    if-eq v6, v7, :cond_d

    .line 262
    if-eqz v15, :cond_b

    .line 263
    iget-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    if-nez v6, :cond_9

    .line 264
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    .line 266
    :cond_9
    iget-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 267
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_a
    const/4 v15, 0x0

    .line 271
    :cond_b
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 253
    .end local v14    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "curGroup":Lcom/vkcoffee/android/api/models/Notification;
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    .end local v39    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    .restart local v5    # "entry":Lcom/vkcoffee/android/api/models/Notification;
    :cond_c
    move/from16 v0, v21

    iput v0, v5, Lcom/vkcoffee/android/api/models/Notification;->id:I

    goto/16 :goto_a

    .line 274
    .end local v5    # "entry":Lcom/vkcoffee/android/api/models/Notification;
    .restart local v14    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "curGroup":Lcom/vkcoffee/android/api/models/Notification;
    .restart local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    .restart local v39    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/models/Notification;>;"
    :cond_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 275
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 277
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->feedbackType:Lcom/vkcoffee/android/api/models/Notification$FeedbackType;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$FeedbackType;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->activity:Lcom/vkcoffee/android/api/models/Notification$Activity;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$Activity;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v7, v7, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/models/Notification$ParentType;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 278
    .local v38, "ss":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    if-eqz v6, :cond_f

    .line 279
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkcoffee/android/UserProfile;

    .line 280
    .local v30, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget v8, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 281
    goto :goto_d

    .line 283
    .end local v30    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_f
    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 285
    if-nez v15, :cond_10

    .line 286
    new-instance v15, Lcom/vkcoffee/android/api/models/Notification;

    .end local v15    # "curGroup":Lcom/vkcoffee/android/api/models/Notification;
    invoke-direct {v15}, Lcom/vkcoffee/android/api/models/Notification;-><init>()V

    .line 287
    .restart local v15    # "curGroup":Lcom/vkcoffee/android/api/models/Notification;
    sget-object v6, Lcom/vkcoffee/android/api/models/Notification$Type;->Grouped:Lcom/vkcoffee/android/api/models/Notification$Type;

    iput-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    .line 288
    move-object/from16 v0, v16

    iget v6, v0, Lcom/vkcoffee/android/api/models/Notification;->date:I

    iput v6, v15, Lcom/vkcoffee/android/api/models/Notification;->date:I

    .line 289
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    .line 290
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 292
    :cond_10
    iget-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 294
    :cond_11
    if-eqz v15, :cond_13

    .line 295
    iget-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 296
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_12
    const/4 v15, 0x0

    .line 299
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 301
    :cond_13
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 305
    .end local v16    # "e":Lcom/vkcoffee/android/api/models/Notification;
    .end local v38    # "ss":Ljava/lang/String;
    :cond_14
    if-eqz v15, :cond_15

    iget-object v6, v15, Lcom/vkcoffee/android/api/models/Notification;->group:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 306
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v15, 0x0

    .line 310
    :cond_15
    move-object/from16 v37, v39

    .line 311
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->n:Ljava/util/List;

    .line 312
    const-string/jumbo v6, "next_from"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->newFrom:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->mFoundDividers:Z

    move-object/from16 v0, v35

    iput-boolean v6, v0, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->foundDividers:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    return-object v35

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 134
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/notifications/NotificationsGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;

    move-result-object v0

    return-object v0
.end method
