.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragController"
.end annotation


# instance fields
.field private mDragging:Z

.field private mEndPosition:I

.field private mStartPosition:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 439
    const/4 v1, 0x3

    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/16 v0, 0xc

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->makeMovementFlags(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 449
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 450
    .local v0, "fromPosition":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 452
    .local v2, "toPosition":I
    if-ge v0, v2, :cond_1

    .line 453
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 454
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 455
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v3, :cond_0

    .line 456
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/vkcoffee/android/AudioPlayerService;->swapPlaylistItems(II)V

    .line 453
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-le v1, v2, :cond_3

    .line 461
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v1, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 462
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v3, :cond_2

    .line 463
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/vkcoffee/android/AudioPlayerService;->swapPlaylistItems(II)V

    .line 460
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 467
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v3

    iput v2, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mEndPosition:I

    invoke-virtual {v3, v0, v2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyItemMoved(II)V

    .line 468
    const/4 v3, 0x1

    return v3
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 474
    packed-switch p2, :pswitch_data_0

    .line 489
    :goto_0
    :pswitch_0
    return-void

    .line 476
    :pswitch_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mDragging:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mStartPosition:I

    iget v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mEndPosition:I

    if-eq v0, v1, :cond_0

    .line 479
    :cond_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mDragging:Z

    goto :goto_0

    .line 483
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mDragging:Z

    .line 484
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->mStartPosition:I

    .line 485
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 493
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->removePlaylistItem(I)V

    .line 494
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyItemRemoved(I)V

    .line 496
    return-void
.end method
