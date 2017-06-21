.class public Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;
.super Ljava/lang/Object;
.source "MarketGoodGetFullPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoodFullPage"
.end annotation


# instance fields
.field public final comments:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field public final contact_id:I

.field public final contact_name:Ljava/lang/String;

.field public final contact_photo_100:Ljava/lang/String;

.field public final contact_photo_200:Ljava/lang/String;

.field public final contact_photo_50:Ljava/lang/String;

.field public final good:Lcom/vkcoffee/android/data/Good;

.field public final likesPhotos:[Ljava/lang/String;

.field public final offset:I

.field public final owner_id:I

.field public final owner_name:Ljava/lang/String;

.field public final owner_photo_100:Ljava/lang/String;

.field public final owner_photo_200:Ljava/lang/String;

.field public final owner_photo_50:Ljava/lang/String;

.field public final wiki_title:Ljava/lang/String;

.field public final wiki_view_url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 43
    const-string/jumbo v7, "good"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "good"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/vkcoffee/android/data/Good;

    const-string/jumbo v9, "good"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/vkcoffee/android/data/Good;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->good:Lcom/vkcoffee/android/data/Good;

    .line 44
    const-string/jumbo v7, "owner_name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_name:Ljava/lang/String;

    .line 45
    const-string/jumbo v7, "owner_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_id:I

    .line 46
    const-string/jumbo v7, "offset"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->offset:I

    .line 47
    const-string/jumbo v7, "owner_photo_50"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_photo_50:Ljava/lang/String;

    .line 48
    const-string/jumbo v7, "owner_photo_100"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_photo_100:Ljava/lang/String;

    .line 49
    const-string/jumbo v7, "owner_photo_200"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->owner_photo_200:Ljava/lang/String;

    .line 50
    const-string/jumbo v7, "wiki_title"

    invoke-static {p1, v7}, Lcom/vkcoffee/android/utils/Utils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->wiki_title:Ljava/lang/String;

    .line 51
    const-string/jumbo v7, "wiki_view_url"

    invoke-static {p1, v7}, Lcom/vkcoffee/android/utils/Utils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->wiki_view_url:Ljava/lang/String;

    .line 53
    const-string/jumbo v7, "contact_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_id:I

    .line 54
    const-string/jumbo v7, "contact_name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_name:Ljava/lang/String;

    .line 55
    const-string/jumbo v7, "contact_photo_50"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_photo_50:Ljava/lang/String;

    .line 56
    const-string/jumbo v7, "contact_photo_100"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_photo_100:Ljava/lang/String;

    .line 57
    const-string/jumbo v7, "contact_photo_200"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->contact_photo_200:Ljava/lang/String;

    .line 59
    const-string/jumbo v7, "like_photos"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 60
    .local v1, "jLikePhotos":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->likesPhotos:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->likesPhotos:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 63
    iget-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->likesPhotos:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "jLikePhotos":Lorg/json/JSONArray;
    :cond_0
    move-object v7, v8

    .line 43
    goto/16 :goto_0

    .line 66
    .restart local v1    # "jLikePhotos":Lorg/json/JSONArray;
    :cond_1
    iput-object v8, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->likesPhotos:[Ljava/lang/String;

    .line 69
    :cond_2
    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_7

    .line 70
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .local v3, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .local v6, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 74
    .local v4, "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "profiles"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 75
    .local v2, "jprofiles":Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    .line 76
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 77
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 78
    .local v5, "p":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "first_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "last_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "first_name_dat"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    const-string/jumbo v7, "photo_medium_rec"

    :goto_3
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_3
    const-string/jumbo v7, "photo_rec"

    goto :goto_3

    .line 84
    .end local v0    # "i":I
    .end local v5    # "p":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "groups"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_6

    .line 86
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 87
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 88
    .restart local v5    # "p":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    const-string/jumbo v8, "name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v8, v7

    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_5

    const-string/jumbo v7, "photo_200"

    :goto_5
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 89
    :cond_5
    const-string/jumbo v7, "photo_100"

    goto :goto_5

    .line 93
    .end local v0    # "i":I
    .end local v5    # "p":Lorg/json/JSONObject;
    :cond_6
    new-instance v7, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v8, "comments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;

    invoke-direct {v9, p0, v3, v6, v4}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage$1;-><init>(Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    iput-object v7, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    .line 104
    .end local v2    # "jprofiles":Lorg/json/JSONArray;
    .end local v3    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v6    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :goto_6
    return-void

    .line 102
    :cond_7
    iput-object v8, p0, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;->comments:Lcom/vkcoffee/android/data/VKList;

    goto :goto_6
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/json/JSONObject;
    .param p2, "x1"    # Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage$GoodFullPage;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
