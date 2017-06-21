.class Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;
.super Ljava/lang/Object;
.source "IndeterminateProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingPathTransform"
.end annotation


# instance fields
.field public mTrimPathEnd:F

.field public mTrimPathOffset:F

.field public mTrimPathStart:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;

    .prologue
    .line 122
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 137
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathEnd:F

    .line 138
    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 143
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathOffset:F

    .line 144
    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 131
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingPathTransform;->mTrimPathStart:F

    .line 132
    return-void
.end method
