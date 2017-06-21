.class public Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;
.super Ljava/lang/Object;
.source "BoardCommentLike.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/board/BoardCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public commentId:I

.field public isLiked:Z

.field public likeCount:I

.field public ownerId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "ownerId"    # I
    .param p2, "commentId"    # I
    .param p3, "isLiked"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->ownerId:I

    .line 18
    iput p2, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->commentId:I

    .line 19
    iput-boolean p3, p0, Lcom/vkcoffee/android/api/board/BoardCommentLike$Result;->isLiked:Z

    .line 20
    return-void
.end method
