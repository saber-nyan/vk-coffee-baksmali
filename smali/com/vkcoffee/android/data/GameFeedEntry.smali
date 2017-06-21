.class public Lcom/vkcoffee/android/data/GameFeedEntry;
.super Ljava/lang/Object;
.source "GameFeedEntry.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/GameFeedEntry$Type;
    }
.end annotation


# instance fields
.field public app:Lcom/vkcoffee/android/data/ApiApplication;

.field public date:I

.field public level:I

.field private mTag:Ljava/lang/Object;

.field public text:Ljava/lang/String;

.field public type:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

.field public user:Lcom/vkcoffee/android/UserProfile;

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .local p3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "typeStr":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->values()[Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 42
    .local v0, "type":Lcom/vkcoffee/android/data/GameFeedEntry$Type;
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    iput-object v0, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->type:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "type":Lcom/vkcoffee/android/data/GameFeedEntry$Type;
    :cond_1
    const-string/jumbo v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->date:I

    .line 47
    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->text:Ljava/lang/String;

    .line 48
    const-string/jumbo v3, "level"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->level:I

    .line 49
    const-string/jumbo v3, "value"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->value:I

    .line 50
    const-string/jumbo v3, "user_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iput-object v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->user:Lcom/vkcoffee/android/UserProfile;

    .line 51
    const-string/jumbo v3, "app_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/ApiApplication;

    iput-object v3, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->app:Lcom/vkcoffee/android/data/ApiApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "typeStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mTag"    # Ljava/lang/Object;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/data/GameFeedEntry;->mTag:Ljava/lang/Object;

    .line 30
    return-void
.end method
