.class Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;
.super Ljava/lang/Object;
.source "IndeterminateProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingRotation"
.end annotation


# instance fields
.field private mRotation:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$1;

    .prologue
    .line 147
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;)F
    .locals 1
    .param p0, "x0"    # Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;

    .prologue
    .line 147
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->mRotation:F

    return v0
.end method


# virtual methods
.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 154
    iput p1, p0, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable$RingRotation;->mRotation:F

    .line 155
    return-void
.end method
