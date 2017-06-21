.class public final enum Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;
.super Ljava/lang/Enum;
.source "StoreGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/store/StoreGetCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

.field public static final enum Section:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

.field public static final enum StockItem:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    const-string/jumbo v1, "StockItem"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->StockItem:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    .line 71
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    const-string/jumbo v1, "Section"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->Section:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    sget-object v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->StockItem:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->Section:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->$VALUES:[Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 74
    :sswitch_0
    const-string/jumbo v1, "stock_item"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "section"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->StockItem:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    goto :goto_1

    .line 78
    :pswitch_1
    sget-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->Section:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    goto :goto_1

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x27ae3a9c -> :sswitch_0
        0x756f7ee5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->$VALUES:[Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    return-object v0
.end method
