.class Lcom/vkcoffee/android/api/store/StoreGetInventory$1;
.super Ljava/lang/Object;
.source "StoreGetInventory.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/F1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/store/StoreGetInventory;->parse(Lorg/json/JSONObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/functions/F1",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/store/StoreGetInventory;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/store/StoreGetInventory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/store/StoreGetInventory;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/api/store/StoreGetInventory$1;->this$0:Lcom/vkcoffee/android/api/store/StoreGetInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 67
    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/StoreGetInventory$1;->f(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method
