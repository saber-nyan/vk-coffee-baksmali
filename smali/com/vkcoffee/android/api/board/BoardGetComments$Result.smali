.class public Lcom/vkcoffee/android/api/board/BoardGetComments$Result;
.super Ljava/lang/Object;
.source "BoardGetComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/board/BoardGetComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field public offset:I

.field public pAnonymous:I

.field public pAnsId:I

.field public pCreated:I

.field public pId:I

.field public pOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/PollAttachment$Answer;",
            ">;"
        }
    .end annotation
.end field

.field public pOwnerId:I

.field public pQuestion:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pId:I

    .line 107
    iput v1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pOwnerId:I

    .line 108
    iput v1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pCreated:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pQuestion:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pAnsId:I

    .line 111
    iput v1, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pAnonymous:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/board/BoardGetComments$Result;->pOptions:Ljava/util/ArrayList;

    return-void
.end method
