.class public interface abstract Lcom/vkcoffee/android/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# virtual methods
.method public abstract getAttachments()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayableText()Ljava/lang/CharSequence;
.end method

.method public abstract getId()I
.end method

.method public abstract getNumLikes()I
.end method

.method public abstract getResponseName()Ljava/lang/String;
.end method

.method public abstract getTime()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract isBanned()Z
.end method

.method public abstract isLiked()Z
.end method

.method public abstract isReported()Z
.end method
