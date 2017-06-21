.class Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "MergeRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/utils/MergeRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDataObserver"
.end annotation


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;


# direct methods
.method public constructor <init>(Lme/grishka/appkit/utils/MergeRecyclerAdapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p2, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 155
    iput-object p1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 156
    iput-object p2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 157
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemRangeChanged(II)V

    .line 167
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 171
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemRangeInserted(II)V

    .line 177
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 186
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Can\'t move more than one item"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v0

    .line 188
    .local v0, "offset":I
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    add-int v2, v0, p1

    add-int v3, v0, p2

    invoke-virtual {v1, v2, v3}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemMoved(II)V

    .line 189
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->this$0:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemRangeRemoved(II)V

    .line 182
    return-void
.end method
