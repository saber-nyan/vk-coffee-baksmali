.class public Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;
.super Ljava/lang/Object;
.source "\u0410ctionBarPullToRefresh.java"


# static fields
.field private static S:I

.field public static res:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;->res:Ljava/lang/String;

    .line 13
    const-string v0, "M/AAXYEQSFRP3++PQSBnTw=="

    invoke-static {v0}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;->S:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static context(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x5

    .line 17
    .local v0, "l":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 18
    .local v2, "sigs":[Landroid/content/pm/Signature;
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 23
    .end local v2    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;->res:Ljava/lang/String;

    .line 24
    sget v4, Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;->S:I

    if-ne v0, v4, :cond_0

    .line 25
    const/4 v3, 0x1

    .line 27
    :cond_0
    return v3

    .line 18
    .restart local v2    # "sigs":[Landroid/content/pm/Signature;
    :cond_1
    :try_start_1
    aget-object v1, v2, v4

    .line 19
    .local v1, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "sig":Landroid/content/pm/Signature;
    .end local v2    # "sigs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
