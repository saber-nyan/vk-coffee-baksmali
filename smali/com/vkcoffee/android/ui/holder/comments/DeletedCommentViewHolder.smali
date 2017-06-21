.class public Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;
.super Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;
.source "DeletedCommentViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/Comment;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder",
        "<TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private block:Landroid/widget/TextView;

.field private final holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private report:Landroid/widget/TextView;

.field private restore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2    # Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder<TT;>;"
    .local p2, "holderListener":Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;, "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener<TT;>;"
    const v1, 0x7f03006d

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 32
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;

    .line 33
    const v1, 0x7f1001d7

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "textView":Landroid/widget/TextView;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->restore:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f1001d9

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "textView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .restart local v0    # "textView":Landroid/widget/TextView;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f1001d8

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "textView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .restart local v0    # "textView":Landroid/widget/TextView;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/Comment;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder<TT;>;"
    .local p1, "comment":Lcom/vkcoffee/android/Comment;, "TT;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;->bind(Lcom/vkcoffee/android/Comment;)V

    .line 66
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;

    invoke-interface {v6}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;->canBanUsers()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lcom/vkcoffee/android/Comment;->getUid()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {p1}, Lcom/vkcoffee/android/Comment;->getUid()I

    move-result v6

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v6, v7, :cond_2

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "canBan":Z
    :goto_0
    invoke-interface {p1}, Lcom/vkcoffee/android/Comment;->getUid()I

    move-result v6

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v6, v7, :cond_3

    .line 72
    const/4 v1, 0x1

    .line 76
    .local v1, "canReport":Z
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    .line 77
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    sget-boolean v6, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v6, :cond_1

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 78
    :cond_1
    const/4 v2, 0x0

    .line 82
    .local v2, "i":I
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    .line 84
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    .line 85
    const/4 v3, 0x0

    .line 89
    .local v3, "i2":I
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    .line 91
    if-eqz v1, :cond_6

    .line 92
    const/4 v3, 0x0

    .line 96
    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-interface {p1}, Lcom/vkcoffee/android/Comment;->isReported()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 98
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->restore:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    const v7, 0x7f080436

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_5
    invoke-interface {p1}, Lcom/vkcoffee/android/Comment;->isBanned()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 106
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    const v7, 0x7f080574

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :goto_6
    return-void

    .line 69
    .end local v0    # "canBan":Z
    .end local v1    # "canReport":Z
    .end local v2    # "i":I
    .end local v3    # "i2":I
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "canBan":Z
    goto :goto_0

    .line 74
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "canReport":Z
    goto :goto_1

    .line 80
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "i":I
    goto :goto_2

    .line 87
    .restart local v5    # "textView":Landroid/widget/TextView;
    :cond_5
    const/16 v3, 0x8

    .restart local v3    # "i2":I
    goto :goto_3

    .line 94
    :cond_6
    const/16 v3, 0x8

    goto :goto_4

    .line 102
    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->report:Landroid/widget/TextView;

    const v7, 0x7f080435

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 110
    :cond_8
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->block:Landroid/widget/TextView;

    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v1}, Lcom/vkcoffee/android/Comment;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;->restoreComment(I)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;->reportComment(Lcom/vkcoffee/android/Comment;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;->banUser(Lcom/vkcoffee/android/Comment;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x7f1001d7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
