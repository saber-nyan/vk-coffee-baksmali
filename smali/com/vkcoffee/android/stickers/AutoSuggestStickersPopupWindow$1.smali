.class Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;
.super Ljava/lang/Object;
.source "AutoSuggestStickersPopupWindow.java"

# interfaces
.implements Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalPath(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    const v1, 0x7f10002c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->access$000(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$1;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->access$000(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->base_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerViewURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
