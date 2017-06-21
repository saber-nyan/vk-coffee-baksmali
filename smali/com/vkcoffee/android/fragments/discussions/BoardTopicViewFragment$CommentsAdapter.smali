.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "BoardTopicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentsAdapter"
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
.field comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    .line 153
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowUpLoader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    add-int/lit8 p1, p1, -0x1

    .line 204
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 205
    :cond_1
    const/4 v0, 0x0

    .line 214
    :cond_2
    return v0

    .line 207
    :cond_3
    const/4 v0, 0x1

    .line 208
    .local v0, "count":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v2, v2, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, "it":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v2, v2, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v2, :cond_4

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowUpLoader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    add-int/lit8 p1, p1, -0x1

    .line 221
    :cond_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 239
    :goto_0
    return-object v3

    .line 224
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "imgindex":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    .local v2, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v4

    .line 239
    goto :goto_0

    .line 226
    .end local v1    # "imgindex":I
    .end local v2    # "it":Ljava/util/Iterator;
    :pswitch_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/board/BoardComment;

    iget-object v3, v3, Lcom/vkcoffee/android/api/board/BoardComment;->userPhoto:Ljava/lang/String;

    goto :goto_0

    .line 231
    .restart local v1    # "imgindex":I
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 232
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_3

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    if-ne v1, p2, :cond_3

    .line 235
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x1

    .line 189
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowDownLoader()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 190
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowUpLoader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :cond_0
    add-int v2, v1, v0

    return v2

    .line 189
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemOffset(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 197
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/board/BoardComment;

    iget v0, v0, Lcom/vkcoffee/android/api/board/BoardComment;->offset:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowUpLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowDownLoader()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNeedShowDownLoader()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->isDownLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNeedShowUpLoader()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->isNeedShowUpLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    add-int/lit8 p2, p2, -0x1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-ltz p2, :cond_1

    .line 183
    check-cast p1, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Comment;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->bind(Lcom/vkcoffee/android/Comment;)V

    .line 185
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 175
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->access$3(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->setCanReply(Z)Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method setData(Ljava/util/List;Z)V
    .locals 0
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    .line 165
    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->notifyDataSetChanged()V

    .line 168
    :cond_0
    return-void
.end method
