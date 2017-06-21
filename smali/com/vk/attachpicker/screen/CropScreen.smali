.class public Lcom/vk/attachpicker/screen/CropScreen;
.super Lcom/vk/attachpicker/simplescreen/BaseScreen;
.source "CropScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/screen/CropScreen$Delegate;
    }
.end annotation


# instance fields
.field private adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

.field private aspectRatio:Landroid/widget/ImageView;

.field private bgView:Landroid/widget/ImageView;

.field private bottomBar:Landroid/view/View;

.field private bottomPanel:Landroid/view/View;

.field private final buttonLock:Lcom/vk/attachpicker/util/TimeoutLock;

.field private cancel:Landroid/view/View;

.field private controlsEnabled:Z

.field private controlsPanel:Landroid/view/View;

.field private cropView:Lcom/vk/attachpicker/crop/CropImageView;

.field private currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field private currentResetAnimator:Landroid/animation/ObjectAnimator;

.field private delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

.field private done:Landroid/view/View;

.field private exitAnimationStarted:Z

.field private final imageState:Lcom/vk/attachpicker/editor/ImageState;

.field private final openCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field private final orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

.field private reset:Landroid/view/View;

.field private resetContainer:Landroid/view/View;

.field private rotate:Landroid/view/View;

.field private rotationLabel:Landroid/widget/TextView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/editor/ImageState;Lcom/vk/attachpicker/screen/CropScreen$Delegate;Lcom/vk/attachpicker/crop/CropAspectRatio;)V
    .locals 4
    .param p1, "imageState"    # Lcom/vk/attachpicker/editor/ImageState;
    .param p2, "delegate"    # Lcom/vk/attachpicker/screen/CropScreen$Delegate;
    .param p3, "startCropAspectRatio"    # Lcom/vk/attachpicker/crop/CropAspectRatio;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;-><init>()V

    .line 38
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 39
    new-instance v0, Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/OrientationLocker;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    .line 40
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->buttonLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->controlsEnabled:Z

    .line 63
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 64
    iput-object p2, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    .line 65
    iput-object p3, p0, Lcom/vk/attachpicker/screen/CropScreen;->openCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 66
    if-nez p3, :cond_0

    sget-object p3, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .end local p3    # "startCropAspectRatio":Lcom/vk/attachpicker/crop/CropAspectRatio;
    :cond_0
    iput-object p3, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/widget/AdjusterView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/screen/CropScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/CropScreen;->showResetButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/crop/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/util/OrientationLocker;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$601(Lcom/vk/attachpicker/screen/CropScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    return-void
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/screen/CropScreen$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vk/attachpicker/screen/CropScreen;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    return-object v0
.end method

.method private addMenuItem(Landroid/support/v7/widget/PopupMenu;Lcom/vk/attachpicker/crop/CropAspectRatio;)V
    .locals 5
    .param p1, "popupMenu"    # Landroid/support/v7/widget/PopupMenu;
    .param p2, "aspectRatio"    # Lcom/vk/attachpicker/crop/CropAspectRatio;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p2, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    iget v3, p2, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    invoke-direct {p0, p2}, Lcom/vk/attachpicker/screen/CropScreen;->getAspectString(Lcom/vk/attachpicker/crop/CropAspectRatio;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 333
    return-void
.end method

.method private animateIn()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vk/attachpicker/screen/CropScreen$2;

    invoke-direct {v2, p0, v0}, Lcom/vk/attachpicker/screen/CropScreen$2;-><init>(Lcom/vk/attachpicker/screen/CropScreen;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 277
    return-void
.end method

.method private animateOut()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 280
    invoke-virtual {p0, v9}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 281
    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropImageView;->disableAll()V

    .line 282
    iput-boolean v10, p0, Lcom/vk/attachpicker/screen/CropScreen;->exitAnimationStarted:Z

    .line 284
    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 285
    .local v1, "cropRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    .line 286
    invoke-virtual {v6}, Lcom/vk/attachpicker/crop/CropImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v7}, Lcom/vk/attachpicker/crop/CropImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 285
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 289
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->orientationLocker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 292
    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 295
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    .line 296
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/vk/attachpicker/screen/CropScreen;->bottomPanel:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v10, [F

    iget-object v7, p0, Lcom/vk/attachpicker/screen/CropScreen;->bottomPanel:Landroid/view/View;

    .line 297
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    .line 295
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 299
    const-wide/16 v4, 0xaf

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 300
    new-instance v3, Lcom/vk/attachpicker/screen/CropScreen$3;

    invoke-direct {v3, p0, v1}, Lcom/vk/attachpicker/screen/CropScreen$3;-><init>(Lcom/vk/attachpicker/screen/CropScreen;Landroid/graphics/RectF;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 311
    return-void
.end method

.method private checkButtonLock()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->buttonLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->buttonLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAspectString(Lcom/vk/attachpicker/crop/CropAspectRatio;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "aspectRatio"    # Lcom/vk/attachpicker/crop/CropAspectRatio;

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    if-ne v1, p1, :cond_0

    .line 323
    new-instance v0, Landroid/text/SpannableString;

    iget v1, p1, Lcom/vk/attachpicker/crop/CropAspectRatio;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 324
    .local v0, "s":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0070

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 327
    .end local v0    # "s":Landroid/text/SpannableString;
    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lcom/vk/attachpicker/crop/CropAspectRatio;->titleResId:I

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideResetButton(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 401
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 404
    :cond_0
    if-eqz p1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 407
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    new-instance v1, Lcom/vk/attachpicker/screen/CropScreen$5;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/CropScreen$5;-><init>(Lcom/vk/attachpicker/screen/CropScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 416
    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 418
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private resetAdjusterView()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotationLabel:Landroid/widget/TextView;

    const-string/jumbo v1, "0\u00b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AdjusterView;->setCurrentScroll(F)V

    .line 375
    return-void
.end method

.method private resetStateToOpen()V
    .locals 6

    .prologue
    .line 214
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 216
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    sget-object v3, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v3, v3, Lcom/vk/attachpicker/crop/CropAspectRatio;->ar:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vk/attachpicker/crop/CropImageView;->setForcedAspectRatio(FZ)V

    .line 218
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v3}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmapAspectRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->calculatePosition(F)Landroid/graphics/RectF;

    move-result-object v1

    .line 219
    .local v1, "newPosition":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->setX0(F)V

    .line 220
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->setY0(F)V

    .line 221
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->setX1(F)V

    .line 222
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->setY1(F)V

    .line 224
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->getCropController()Lcom/vk/attachpicker/crop/CropController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    .line 225
    .local v0, "gs":Lcom/vk/attachpicker/crop/GeometryState;
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/crop/GeometryState;->set(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 226
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->getCropController()Lcom/vk/attachpicker/crop/CropController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    .line 227
    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/CropOverlayView;->getX0()F

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/CropOverlayView;->getY0()F

    move-result v5

    .line 226
    invoke-static {v2, v3, v4, v5}, Lcom/vk/attachpicker/crop/CropUtils;->convertGeometryStateForCrop(Lcom/vk/attachpicker/crop/GeometryState;FFF)V

    .line 228
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->getCropController()Lcom/vk/attachpicker/crop/CropController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 231
    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->openCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-interface {v2, v3}, Lcom/vk/attachpicker/screen/CropScreen$Delegate;->onFixedAspectRatioChanged(Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 232
    return-void
.end method

.method private showAspectRatioMenu()V
    .locals 3

    .prologue
    .line 336
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->aspectRatio:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 337
    .local v0, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->addMenuItem(Landroid/support/v7/widget/PopupMenu;Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 338
    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_SQUARE:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->addMenuItem(Landroid/support/v7/widget/PopupMenu;Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 339
    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_3X4:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->addMenuItem(Landroid/support/v7/widget/PopupMenu;Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 340
    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_4X3:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->addMenuItem(Landroid/support/v7/widget/PopupMenu;Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 341
    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$9;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 361
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 362
    return-void
.end method

.method private showResetButton(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 378
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 381
    :cond_0
    if-eqz p1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 384
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    new-instance v1, Lcom/vk/attachpicker/screen/CropScreen$4;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/CropScreen$4;-><init>(Lcom/vk/attachpicker/screen/CropScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 392
    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 394
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentResetAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private updateAspectRatioIcon()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->aspectRatio:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0074

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->aspectRatio:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0070

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    const v0, 0x7f030127

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 73
    .local v6, "view":Landroid/view/View;
    const v0, 0x7f10031f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f10031d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/crop/CropImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    .line 75
    const v0, 0x7f100322

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotationLabel:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f100324

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/AdjusterView;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    .line 77
    const v0, 0x7f100323

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->aspectRatio:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f100325

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotate:Landroid/view/View;

    .line 79
    const v0, 0x7f100301

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cancel:Landroid/view/View;

    .line 80
    const v0, 0x7f100328

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->reset:Landroid/view/View;

    .line 81
    const v0, 0x7f100327

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->resetContainer:Landroid/view/View;

    .line 82
    const v0, 0x7f100329

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->done:Landroid/view/View;

    .line 83
    const v0, 0x7f100326

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bottomBar:Landroid/view/View;

    .line 84
    const v0, 0x7f100321

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->controlsPanel:Landroid/view/View;

    .line 85
    const v0, 0x7f100320

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bottomPanel:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-direct {p0, v4}, Lcom/vk/attachpicker/screen/CropScreen;->hideResetButton(Z)V

    .line 89
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->resetAdjusterView()V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->aspectRatio:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cancel:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->done:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->reset:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AdjusterView;->setScrollListener(Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;)V

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AdjusterView;->setTransparentTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotate:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    new-instance v1, Lcom/vk/attachpicker/screen/CropScreen$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/CropScreen$1;-><init>(Lcom/vk/attachpicker/screen/CropScreen;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setDelegate(Lcom/vk/attachpicker/crop/CropImageView$Delegate;)V

    .line 177
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->updateAspectRatioIcon()V

    .line 178
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getBigBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-virtual/range {v0 .. v5}, Lcom/vk/attachpicker/crop/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/GeometryState;Lcom/vk/attachpicker/crop/CropAspectRatio;ZZ)V

    .line 179
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->animateIn()V

    .line 183
    return-object v6

    .line 91
    :cond_1
    invoke-direct {p0, v4}, Lcom/vk/attachpicker/screen/CropScreen;->showResetButton(Z)V

    .line 92
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AdjusterView;->setCurrentScroll(F)V

    .line 93
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotationLabel:Landroid/widget/TextView;

    const-string/jumbo v1, "%.1f\u00b0"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/widget/AdjusterView;->getCurrentRotation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 208
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->disableAll()V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 210
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->animateOut()V

    .line 211
    return-void
.end method

.method synthetic lambda$createView$126(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->showAspectRatioMenu()V

    return-void
.end method

.method synthetic lambda$createView$127(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->checkButtonLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->resetStateToOpen()V

    .line 103
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/CropScreen;->finish()V

    goto :goto_0
.end method

.method synthetic lambda$createView$128(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->checkButtonLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v3}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmapAspectRatio()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/vk/attachpicker/screen/CropScreen$Delegate;->getDrawingRect(F)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmapMatrix(Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 114
    .local v0, "cropMatrixBefore":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->getCropController()Lcom/vk/attachpicker/crop/CropController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropController;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/editor/ImageState;->setGeometryState(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 115
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/CropOverlayView;->getCropWidth()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    .line 116
    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/CropOverlayView;->getX0()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/CropOverlayView;->getY0()F

    move-result v4

    .line 115
    invoke-static {v1, v2, v3, v4}, Lcom/vk/attachpicker/crop/CropUtils;->convertGeometryStateForPreview(Lcom/vk/attachpicker/crop/GeometryState;FFF)V

    .line 118
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getAutoFixedBitmap()Landroid/graphics/Bitmap;

    .line 119
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/CropScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/vk/attachpicker/screen/CropScreen$Delegate;->onCrop(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 122
    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$11;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-static {v1, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method synthetic lambda$createView$129(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->reset()V

    .line 126
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 127
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 128
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->resetAdjusterView()V

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/CropScreen;->hideResetButton(Z)V

    .line 130
    return-void
.end method

.method synthetic lambda$createView$130(F)V
    .locals 5
    .param p1, "scrollAmount"    # F

    .prologue
    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotationLabel:Landroid/widget/TextView;

    const-string/jumbo v1, "0\u00b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/crop/CropImageView;->rotate(F)V

    .line 139
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotationLabel:Landroid/widget/TextView;

    const-string/jumbo v1, "%.1f\u00b0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vk/attachpicker/screen/CropScreen;->adjusterView:Lcom/vk/attachpicker/widget/AdjusterView;

    invoke-virtual {v4}, Lcom/vk/attachpicker/widget/AdjusterView;->getCurrentRotation()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method synthetic lambda$createView$131(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableRotate()V

    .line 144
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setLinesVisible(Z)V

    .line 149
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/crop/CropImageView;->setLinesVisible(Z)V

    goto :goto_0
.end method

.method synthetic lambda$createView$132(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->resetAdjusterView()V

    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->rotate90()V

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->cancelPendingAnimations()V

    .line 156
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 157
    return-void
.end method

.method synthetic lambda$null$133()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v1, v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->ar:F

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/crop/CropImageView;->setForcedAspectRatio(FZ)V

    .line 356
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->updateAspectRatioIcon()V

    .line 357
    return-void
.end method

.method synthetic lambda$showAspectRatioMenu$134(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v1, v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    if-ne v0, v1, :cond_2

    .line 343
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->delegate:Lcom/vk/attachpicker/screen/CropScreen$Delegate;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen$Delegate;->onFixedAspectRatioChanged(Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    .line 354
    :cond_1
    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$10;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x20

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 358
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_SQUARE:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v1, v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    if-ne v0, v1, :cond_3

    .line 345
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_SQUARE:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    goto :goto_0

    .line 346
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_3X4:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v1, v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    if-ne v0, v1, :cond_4

    .line 347
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_3X4:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    goto :goto_0

    .line 348
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget-object v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_4X3:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iget v1, v1, Lcom/vk/attachpicker/crop/CropAspectRatio;->id:I

    if-ne v0, v1, :cond_0

    .line 349
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_4X3:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->controlsEnabled:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/CropScreen;->resetStateToOpen()V

    .line 200
    invoke-static {p0}, Lcom/vk/attachpicker/screen/CropScreen$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/screen/CropScreen;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTopPaddingChanged(I)V
    .locals 5
    .param p1, "topPadding"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/vk/attachpicker/screen/CropScreen;->topPadding:I

    .line 189
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cropView:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->overlayView()Lcom/vk/attachpicker/crop/CropOverlayView;

    move-result-object v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropOverlayView;->setTopSidePadding(F)V

    .line 190
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->exitAnimationStarted:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->bgView:Landroid/widget/ImageView;

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sget v2, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    add-int/2addr v2, p1

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sget v4, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 194
    :cond_0
    return-void
.end method

.method public setControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->rotate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->cancel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->reset:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen;->done:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    iput-boolean p1, p0, Lcom/vk/attachpicker/screen/CropScreen;->controlsEnabled:Z

    .line 370
    return-void
.end method
