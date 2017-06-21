.class Lcom/vkcoffee/android/stickers/Stickers$5;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/F2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/Stickers;->fillLocalInfo(Ljava/util/Collection;Lcom/vkcoffee/android/functions/F1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/functions/F2",
        "<",
        "Ljava/lang/Void;",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/Stickers;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/Stickers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers$5;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 568
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/Stickers$5;->f(Lcom/vkcoffee/android/data/orm/StickerStockItem;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/vkcoffee/android/data/orm/StickerStockItem;Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p2, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price_str:Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    return-object v0
.end method
