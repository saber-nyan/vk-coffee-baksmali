.class public Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "AbsCommentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/Comment;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected comment:Lcom/vkcoffee/android/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "layoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 12
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder<TT;>;"
    .local p1, "comment":Lcom/vkcoffee/android/Comment;, "TT;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    .line 17
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/Comment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;->bind(Lcom/vkcoffee/android/Comment;)V

    return-void
.end method
