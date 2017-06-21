.class public Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;
.super Ljava/lang/Object;
.source "PagerVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/PagerVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProgress"
.end annotation


# instance fields
.field public final currentSecond:I

.field public final pagerPosition:I

.field public final progress:F

.field public final totalSeconds:I


# direct methods
.method public constructor <init>(IIFI)V
    .locals 0
    .param p1, "currentSecond"    # I
    .param p2, "totalSeconds"    # I
    .param p3, "progress"    # F
    .param p4, "pagerPosition"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->currentSecond:I

    .line 181
    iput p2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->totalSeconds:I

    .line 182
    iput p3, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->progress:F

    .line 183
    iput p4, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;->pagerPosition:I

    .line 184
    return-void
.end method
