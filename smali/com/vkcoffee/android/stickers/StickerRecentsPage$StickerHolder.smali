.class Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "StickerRecentsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerRecentsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerHolder"
.end annotation


# instance fields
.field private mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

.field private final mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 213
    new-instance v0, Lcom/vkcoffee/android/ui/SquareImageView;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/SquareImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v3, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v4, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 218
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;)V
    .locals 5
    .param p1, "item"    # Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10002c

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v3, p1, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v4, p1, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v1, v1, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v2, v2, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v3, v3, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v4, v4, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v4, v4, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v5, v5, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "keyboard"

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/stickers/StickersView$Listener;->onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const-string/jumbo v1, "keyboard"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->mLastSticker:Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget-object v1, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0
.end method
