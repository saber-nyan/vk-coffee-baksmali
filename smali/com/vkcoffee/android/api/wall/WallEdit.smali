.class public Lcom/vkcoffee/android/api/wall/WallEdit;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "WallEdit.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "postID"    # I
    .param p2, "oid"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string/jumbo v0, "wall.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/wall/WallEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "post_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/wall/WallEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/wall/WallEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void
.end method
