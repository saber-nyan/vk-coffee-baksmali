.class Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "AutoSuggestStickersPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSuggestStickersHolder"
.end annotation


# instance fields
.field private mId:I

.field private mIsUserSticker:Z

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    .line 323
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vkcoffee/android/ui/SquareImageView;

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_AUTOSUGGEST_ITEM_SIZE:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/SquareImageView;->setSize(I)V

    .line 326
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    new-instance v1, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method private getLocalPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_AUTOSUGGEST_ITEM_SIZE:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "b.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method

.method private getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$100(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_AUTOSUGGEST_ITEM_SIZE:I

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "b.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method


# virtual methods
.method public bind(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "isUserSticker"    # Z

    .prologue
    .line 331
    iput p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    .line 332
    iput-boolean p2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mIsUserSticker:Z

    .line 334
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->itemView:Landroid/view/View;

    const v3, 0x7f10002c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 336
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mIsUserSticker:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 338
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "uri":Ljava/lang/String;
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "localPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    return-void

    .line 336
    .end local v0    # "localPath":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mIsUserSticker:Z

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$200(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/stickers/Stickers;->getByStickerId(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v6

    .line 355
    .local v6, "stockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    if-eqz v6, :cond_0

    .line 356
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    iget v3, v6, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/stickers/Stickers;->addRecent(II)V

    .line 359
    :cond_0
    if-nez v6, :cond_2

    const/4 v1, 0x0

    .line 360
    .local v1, "packId":I
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$200(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v0

    iget v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "suggestion_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    invoke-static {v7}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$100(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v7

    iget-object v7, v7, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->dictionary_key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/vkcoffee/android/stickers/StickersView$Listener;->onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v1    # "packId":I
    .end local v6    # "stockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :cond_1
    :goto_1
    return-void

    .line 359
    .restart local v6    # "stockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :cond_2
    iget v1, v6, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    goto :goto_0

    .line 363
    .end local v6    # "stockItem":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :cond_3
    iget v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->mId:I

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->this$0:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    .line 365
    invoke-static {v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->access$100(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->dictionary_key:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/data/orm/Product;->getReferrerSuggestion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x1

    .line 363
    invoke-static {v2, v3, v0, v4}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->showByStickerId(ILjava/lang/String;Landroid/app/Activity;Z)V

    goto :goto_1
.end method
