.class public interface abstract Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
.super Ljava/lang/Object;
.source "CommentViewHolder.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommentViewHolderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/Comment;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;"
    }
.end annotation


# virtual methods
.method public abstract likeComment(Lcom/vkcoffee/android/Comment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract replyToComment(Lcom/vkcoffee/android/Comment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract showCommentActions(Lcom/vkcoffee/android/Comment;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
