.class public Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;
.super Landroid/widget/ProgressBar;
.source "MaterialProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;
    }
.end annotation


# static fields
.field public static final PROGRESS_STYLE_CIRCULAR:I = 0x0

.field public static final PROGRESS_STYLE_HORIZONTAL:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProgressStyle:I

.field private mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    invoke-direct {v0, v2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    .line 39
    invoke-direct {p0, p1, v2, v1, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    .line 45
    invoke-direct {p0, p1, p2, v2, v2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;-><init>(Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$1;)V

    iput-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method private applyDeterminateProgressTint()V
    .locals 2

    .prologue
    .line 281
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v1, v1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v1, v1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 284
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V

    .line 287
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private applyIndeterminateProgressTint()V
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v1, v1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-boolean v1, v1, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    invoke-direct {p0, v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V

    .line 296
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private applyProgressTint()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyDeterminateProgressTint()V

    .line 277
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyIndeterminateProgressTint()V

    .line 278
    return-void
.end method

.method private applyTintForDrawable(Landroid/graphics/drawable/Drawable;Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tint"    # Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x15

    .line 303
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_3

    .line 305
    :cond_0
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_1

    .line 306
    instance-of v0, p1, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 307
    check-cast v0, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    iget-object v1, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-interface {v0, v1}, Lme/zhanghai/android/materialprogressbar/TintableDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 316
    :cond_1
    :goto_0
    iget-boolean v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_2

    .line 317
    instance-of v0, p1, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 318
    check-cast v0, Lme/zhanghai/android/materialprogressbar/TintableDrawable;

    iget-object v1, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {v0, v1}, Lme/zhanghai/android/materialprogressbar/TintableDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 329
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 333
    :cond_3
    return-void

    .line 309
    :cond_4
    sget-object v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 311
    iget-object v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 320
    :cond_5
    sget-object v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "drawable did not implement TintableDrawable, it won\'t be tinted below Lollipop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 322
    iget-object v0, p2, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 64
    sget-object v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_progressStyle:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    .line 68
    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_setBothDrawables:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 70
    .local v1, "setBothDrawables":Z
    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_useIntrinsicPadding:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 72
    .local v3, "useIntrinsicPadding":Z
    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_showTrack:I

    iget v7, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    if-ne v7, v5, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 74
    .local v2, "showTrack":Z
    sget v4, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_android_tint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_android_tint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 77
    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-boolean v5, v4, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    .line 79
    :cond_1
    sget v4, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_tintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    sget v6, Lme/zhanghai/android/materialprogressbar/R$styleable;->MaterialProgressBar_mpb_tintMode:I

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lme/zhanghai/android/materialprogressbar/internal/DrawableCompat;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 82
    iget-object v4, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-boolean v5, v4, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    .line 84
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    iget v4, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    packed-switch v4, :pswitch_data_0

    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown progress style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 89
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "Determinate circular drawable is not yet supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_4
    new-instance v4, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-direct {v4, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setUseIntrinsicPadding(Z)V

    .line 107
    invoke-virtual {p0, v2}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setShowTrack(Z)V

    .line 108
    return-void

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    .line 97
    :cond_6
    new-instance v4, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;

    invoke-direct {v4, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateHorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_7
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v1, :cond_5

    .line 100
    :cond_8
    new-instance v4, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;

    invoke-direct {v4, p1}, Lme/zhanghai/android/materialprogressbar/HorizontalProgressDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgressStyle()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressStyle:I

    return v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iget-object v0, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getShowTrack()Z
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;->getShowTrack()Z

    move-result v1

    .line 171
    :goto_0
    return v1

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUseIntrinsicPadding()Z
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;->getUseIntrinsicPadding()Z

    move-result v1

    return v1

    .line 140
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Drawable does not implement IntrinsicPaddingDrawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyIndeterminateProgressTint()V

    .line 211
    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyDeterminateProgressTint()V

    .line 201
    :cond_0
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 241
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintList:Z

    .line 243
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyProgressTint()V

    .line 244
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    iput-object p1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 270
    iget-object v0, p0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->mProgressTint:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar$TintInfo;->mHasTintMode:Z

    .line 272
    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->applyProgressTint()V

    .line 273
    return-void
.end method

.method public setShowTrack(Z)V
    .locals 3
    .param p1, "showTrack"    # Z

    .prologue
    .line 185
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    if-eqz v1, :cond_1

    .line 187
    check-cast v0, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0, p1}, Lme/zhanghai/android/materialprogressbar/ShowTrackDrawable;->setShowTrack(Z)V

    .line 191
    :cond_0
    return-void

    .line 188
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Drawable does not implement ShowTrackDrawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUseIntrinsicPadding(Z)V
    .locals 3
    .param p1, "useIntrinsicPadding"    # Z

    .prologue
    .line 152
    invoke-virtual {p0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0, p1}, Lme/zhanghai/android/materialprogressbar/IntrinsicPaddingDrawable;->setUseIntrinsicPadding(Z)V

    .line 158
    return-void

    .line 156
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Drawable does not implement IntrinsicPaddingDrawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
