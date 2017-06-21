.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "StickerManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragController"
.end annotation


# instance fields
.field private mDragging:Z

.field private mEndPosition:I

.field private mStartPosition:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 174
    instance-of v0, p3, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .end local p3    # "target":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p3}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->access$1(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x0

    .line 170
    instance-of v1, p2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .end local p2    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->access$1(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->makeMovementFlags(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 178
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 179
    .local v1, "fromPosition":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 181
    .local v3, "toPosition":I
    if-ge v1, v3, :cond_2

    .line 182
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->access$1(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    .line 191
    .local v0, "access$600":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    iput v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mEndPosition:I

    .line 192
    invoke-virtual {v0, v1, v3}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemMoved(II)V

    .line 193
    const/4 v4, 0x1

    return v4

    .line 183
    .end local v0    # "access$600":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_2
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-le v2, v3, :cond_0

    .line 187
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 186
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 198
    packed-switch p2, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mDragging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mStartPosition:I

    iget v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mEndPosition:I

    if-eq v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mStartPosition:I

    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mEndPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->sendReorder(II)V

    .line 203
    :cond_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mDragging:Z

    goto :goto_0

    .line 206
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mDragging:Z

    .line 207
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$DragController;->mStartPosition:I

    .line 208
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 216
    return-void
.end method
