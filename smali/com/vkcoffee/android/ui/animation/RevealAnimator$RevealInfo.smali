.class public Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;
.super Ljava/lang/Object;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final endRadius:F

.field public final startRadius:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->centerX:I

    .line 66
    iput p2, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->centerY:I

    .line 67
    iput p3, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->startRadius:F

    .line 68
    iput p4, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;->endRadius:F

    .line 69
    return-void
.end method
