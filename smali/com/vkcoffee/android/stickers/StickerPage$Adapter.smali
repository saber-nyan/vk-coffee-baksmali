.class Lcom/vkcoffee/android/stickers/StickerPage$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "StickerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickerPage;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/StickerPage;)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->setHasStableIds(Z)V

    .line 273
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$100(Lcom/vkcoffee/android/stickers/StickerPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/StickerPage;->access$100(Lcom/vkcoffee/android/stickers/StickerPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    .end local p1    # "position":I
    .local v0, "position":I
    :goto_0
    aget v1, v1, p1

    int-to-long v2, v1

    move p1, v0

    .end local v0    # "position":I
    .restart local p1    # "position":I
    :goto_1
    return-wide v2

    .line 316
    :pswitch_0
    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_0
    move v0, p1

    .line 319
    .end local p1    # "position":I
    .restart local v0    # "position":I
    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$100(Lcom/vkcoffee/android/stickers/StickerPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 307
    const/4 v0, -0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 269
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 288
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 290
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    goto :goto_0

    .line 294
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :pswitch_1
    check-cast p1, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;->bind(I)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 277
    packed-switch p2, :pswitch_data_0

    .line 282
    new-instance v0, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/StickerPage;->access$400(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickerPage;->access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerPage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;-><init>(Lcom/vkcoffee/android/stickers/StickerPage;Landroid/content/Context;)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
