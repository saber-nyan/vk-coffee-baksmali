.class Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "StickerPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerHolder"
.end annotation


# static fields
.field private static final ID:I


# instance fields
.field private final item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mId:I

.field private final mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .param p3, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 176
    new-instance v0, Lcom/vkcoffee/android/ui/SquareImageView;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/SquareImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 177
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v3, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sget v4, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 181
    iput-object p3, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 182
    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mId:I

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10002c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_1

    .line 194
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mId:I

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->addRecent(II)V

    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mId:I

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v4, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mId:I

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v5, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->mId:I

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "keyboard"

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/stickers/StickersView$Listener;->onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const-string/jumbo v1, "keyboard"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0
.end method
