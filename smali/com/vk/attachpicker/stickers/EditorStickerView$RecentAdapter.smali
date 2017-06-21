.class Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentAdapter"
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
.field private final recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "recentStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->recentStickers:Ljava/util/ArrayList;

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->setHasStableIds(Z)V

    .line 339
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v0, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 332
    check-cast p1, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;
    .param p2, "position"    # I

    .prologue
    .line 348
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    .line 349
    .local v0, "rs":Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;
    iget-object v1, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mStockItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    invoke-virtual {p1, v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)V

    .line 350
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 343
    new-instance v0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$RecentAdapter;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V

    return-object v0
.end method
