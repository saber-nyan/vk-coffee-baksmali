.class Lcom/vkcoffee/android/stickers/StickerRecentsPage$1;
.super Ljava/lang/Object;
.source "StickerRecentsPage.java"

# interfaces
.implements Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerRecentsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$1;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalPath(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    const v1, 0x7f10002c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .line 62
    .local v0, "sticker":Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerViewURL(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getURL(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    const v1, 0x7f10002c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .line 53
    .local v0, "sticker":Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerViewURL(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
