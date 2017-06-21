.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

.field private mColors:[I

.field private mGenerateBackgroundUsingColors:Z

.field private mGradients:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 663
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 689
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 690
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 691
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0f0093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 692
    const v1, 0x7f0805e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 693
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 694
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 695
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 696
    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 697
    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 698
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 699
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 700
    return-void
.end method


# virtual methods
.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "backgroundDrawableWhenHidden"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 792
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 793
    return-object p0
.end method

.method public build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .locals 17

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    if-eqz v2, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    invoke-static {v2, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 669
    :cond_0
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v6, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;)V

    .line 684
    .local v1, "ret":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    return-object v1
.end method

.method public callbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "onProgressiveStopEndedListener"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 787
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 788
    return-object p0
.end method

.method public color(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 727
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 728
    return-object p0
.end method

.method public colors([I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 732
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 736
    return-object p0
.end method

.method public generateBackgroundUsingColors()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    .line 798
    return-object p0
.end method

.method public gradients()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "useGradients"    # Z

    .prologue
    .line 806
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 807
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Interpolator can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 707
    return-object p0
.end method

.method public mirrorMode(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 777
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 778
    return-object p0
.end method

.method public progressiveStart(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 783
    return-object p0
.end method

.method public progressiveStartSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "progressiveStartSpeed"    # F

    .prologue
    .line 756
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "progressiveStartSpeed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 760
    return-object p0
.end method

.method public progressiveStopSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "progressiveStopSpeed"    # F

    .prologue
    .line 764
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "progressiveStopSpeed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 768
    return-object p0
.end method

.method public reversed(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 772
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 773
    return-object p0
.end method

.method public sectionsCount(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 711
    if-gtz p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 715
    return-object p0
.end method

.method public separatorLength(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 719
    if-gez p1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 723
    return-object p0
.end method

.method public speed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 748
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 752
    return-object p0
.end method

.method public strokeWidth(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 740
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 744
    return-object p0
.end method
