.class public final enum Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
.super Ljava/lang/Enum;
.source "MarketGetMarketPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/market/MarketGetMarketPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

.field public static final enum byAddDate:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

.field public static final enum byDefault:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

.field public static final enum byPriceAsk:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

.field public static final enum byPriceDesc:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;


# instance fields
.field private final intType:I

.field public final titleRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    const-string/jumbo v1, "byDefault"

    const v2, 0x7f0802a0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byDefault:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 24
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    const-string/jumbo v1, "byAddDate"

    const v2, 0x7f08029f

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byAddDate:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 25
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    const-string/jumbo v1, "byPriceAsk"

    const v2, 0x7f0802a2

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byPriceAsk:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 26
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    const-string/jumbo v1, "byPriceDesc"

    const v2, 0x7f0802a1

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byPriceDesc:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .line 21
    new-array v0, v7, [Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    sget-object v1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byDefault:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byAddDate:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byPriceAsk:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->byPriceDesc:Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->$VALUES:[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "titleRes"    # I
    .param p4, "intType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->titleRes:I

    .line 34
    iput p4, p0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->intType:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    .prologue
    .line 21
    iget v0, p0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->intType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->$VALUES:[Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/market/MarketGetMarketPage$SortType;

    return-object v0
.end method
