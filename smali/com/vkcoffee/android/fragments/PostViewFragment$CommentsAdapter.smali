.class Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder",
        "<",
        "Lcom/vkcoffee/android/NewsComment;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_DELETED:I = 0x65

.field private static final VIEW_TYPE_REGULAR:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 253
    const/4 v0, 0x1

    .line 254
    .local v0, "count":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsComment;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 255
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    return v0

    .line 256
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v2, v2, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v2, :cond_0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 264
    packed-switch p2, :pswitch_data_0

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "imgindex":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsComment;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 270
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    const/4 v3, 0x0

    .end local v1    # "imgindex":I
    .end local v2    # "it":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 266
    :pswitch_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsComment;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto :goto_0

    .line 271
    .restart local v1    # "imgindex":I
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 272
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_0

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    if-ne v1, p2, :cond_0

    .line 275
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder",
            "<",
            "Lcom/vkcoffee/android/NewsComment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder<Lcom/vkcoffee/android/NewsComment;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;->bind(Lcom/vkcoffee/android/Comment;)V

    .line 242
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder",
            "<",
            "Lcom/vkcoffee/android/NewsComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 235
    new-instance v0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;)V

    goto :goto_0
.end method
