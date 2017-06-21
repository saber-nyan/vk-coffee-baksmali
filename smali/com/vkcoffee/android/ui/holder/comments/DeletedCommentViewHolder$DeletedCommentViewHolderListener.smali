.class public interface abstract Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;
.super Ljava/lang/Object;
.source "DeletedCommentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeletedCommentViewHolderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/Comment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract banUser(Lcom/vkcoffee/android/Comment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract canBanUsers()Z
.end method

.method public abstract reportComment(Lcom/vkcoffee/android/Comment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract restoreComment(I)V
.end method
