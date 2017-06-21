.class final synthetic Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/F1;


# static fields
.field private static final instance:Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;->instance:Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/vkcoffee/android/functions/F1;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;->instance:Lcom/vkcoffee/android/api/store/StoreGetPurchases$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-static {p1}, Lcom/vkcoffee/android/api/store/StoreGetPurchases;->lambda$parse$195(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method
