.class Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p2, "stickerStockItem"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->setHasStableIds(Z)V

    .line 308
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;
    .param p2, "position"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->stickerStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)V

    .line 318
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 312
    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$Adapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V

    return-object v0
.end method
