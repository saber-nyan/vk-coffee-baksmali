.class Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId$1;
.super Ljava/lang/Object;
.source "GetStickerStockItemByStickerId.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/F1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
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
.field final synthetic this$0:Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId$1;->this$0:Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 37
    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/GetStickerStockItemByStickerId$1;->f(Lcom/vkcoffee/android/data/orm/StickerStockItem;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    return-object v0
.end method
