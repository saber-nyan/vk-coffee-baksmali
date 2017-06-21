.class final synthetic Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;

    invoke-direct {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;->instance:Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;->instance:Lcom/vk/attachpicker/mediastore/MediaStoreController$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    check-cast p2, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-static {p1, p2}, Lcom/vk/attachpicker/mediastore/MediaStoreController;->lambda$static$76(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    move-result v0

    return v0
.end method
