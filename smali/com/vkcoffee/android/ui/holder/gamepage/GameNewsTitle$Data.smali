.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;
.super Ljava/lang/Object;
.source "GameNewsTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field appId:I

.field isMember:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "isMember"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->appId:I

    .line 25
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->isMember:Z

    .line 26
    return-void
.end method
