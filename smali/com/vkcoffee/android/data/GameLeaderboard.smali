.class public Lcom/vkcoffee/android/data/GameLeaderboard;
.super Ljava/lang/Object;
.source "GameLeaderboard.java"


# static fields
.field public static KEY_LEVEL:Ljava/lang/String;

.field public static KEY_POINTS:Ljava/lang/String;

.field public static KEY_USER_ID:Ljava/lang/String;


# instance fields
.field public final intValue:I

.field public final level:Ljava/lang/String;

.field public final points:Ljava/lang/String;

.field public final userId:I

.field public final userProfile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "user_id"

    sput-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_USER_ID:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "points"

    sput-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_POINTS:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "level"

    sput-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_LEVEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "profileSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->userId:I

    .line 25
    sget-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_POINTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->points:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/vkcoffee/android/data/GameLeaderboard;->KEY_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->level:Ljava/lang/String;

    .line 27
    iget v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->userId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->userProfile:Lcom/vkcoffee/android/UserProfile;

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->points:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->points:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/data/GameLeaderboard;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->level:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->level:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/data/GameLeaderboard;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/data/GameLeaderboard;->intValue:I

    goto :goto_0
.end method


# virtual methods
.method public parseInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
