.class public interface abstract Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;
.super Ljava/lang/Object;
.source "BoardCommentsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/board/BoardCommentsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BoardCommentsLoaderListener"
.end annotation


# virtual methods
.method public abstract onCommentLoaded(IIZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFinishLoading(IZ)V
.end method

.method public abstract onItemDeleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartLoading(IZ)V
.end method

.method public abstract onStartReload()V
.end method

.method public abstract scrollToPosition(IZ)V
.end method

.method public abstract updatePool(Lcom/vkcoffee/android/attachments/PollAttachment;)V
.end method

.method public abstract updateTotal(I)V
.end method
