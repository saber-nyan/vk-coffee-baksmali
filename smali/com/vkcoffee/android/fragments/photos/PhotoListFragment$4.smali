.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _list:Landroid/view/View;

.field private currentAnim:Landroid/animation/Animator;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private lastTextAlpha:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 359
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->interpolator:Landroid/view/animation/Interpolator;

    .line 360
    const/16 v0, 0xff

    iput v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->lastTextAlpha:I

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->visible:Z

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public getToolbarTitleTextAlpha()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->lastTextAlpha:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 364
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->_list:Landroid/view/View;

    if-nez v10, :cond_0

    .line 365
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->_list:Landroid/view/View;

    .line 367
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    if-nez v10, :cond_2

    .line 368
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->_list:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 415
    :cond_1
    :goto_0
    return v13

    .line 369
    :cond_2
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 371
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v11}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v11

    invoke-virtual {v11, v12}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$3(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10, v12}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    const/high16 v11, -0x3db80000    # -50.0f

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v11

    if-gt v10, v11, :cond_5

    .line 372
    :cond_3
    const/4 v6, 0x1

    .line 376
    .local v6, "newVisible":Z
    :goto_1
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->visible:Z

    if-eq v6, v10, :cond_1

    .line 378
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->visible:Z

    .line 379
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    if-eqz v10, :cond_4

    .line 380
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    .line 381
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 383
    :cond_4
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 384
    .local v7, "set":Landroid/animation/AnimatorSet;
    const-string v8, "toolbarTitleTextAlpha"

    .line 385
    .local v8, "str":Ljava/lang/String;
    new-array v5, v13, [I

    .line 386
    .local v5, "iArr":[I
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->visible:Z

    if-eqz v10, :cond_6

    .line 387
    const/16 v4, 0xff

    .line 391
    .local v4, "i":I
    :goto_2
    aput v4, v5, v12

    .line 392
    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 393
    .local v1, "alpha":Landroid/animation/ObjectAnimator;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_8

    .line 394
    const/4 v10, 0x2

    new-array v2, v10, [Landroid/animation/Animator;

    .line 395
    .local v2, "animatorArr":[Landroid/animation/Animator;
    aput-object v1, v2, v12

    .line 396
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$4(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 397
    .local v0, "access$1700":Landroid/support/v7/widget/Toolbar;
    const-string v9, "elevation"

    .line 398
    .local v9, "str2":Ljava/lang/String;
    new-array v3, v13, [F

    .line 399
    .local v3, "fArr":[F
    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->visible:Z

    if-eqz v10, :cond_7

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    int-to-float v10, v10

    :goto_3
    aput v10, v3, v12

    .line 400
    invoke-static {v0, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v2, v13

    .line 401
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 405
    .end local v0    # "access$1700":Landroid/support/v7/widget/Toolbar;
    .end local v2    # "animatorArr":[Landroid/animation/Animator;
    .end local v3    # "fArr":[F
    .end local v9    # "str2":Ljava/lang/String;
    :goto_4
    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 406
    new-instance v10, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4$1;

    invoke-direct {v10, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;)V

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iput-object v7, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 412
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 374
    .end local v1    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v4    # "i":I
    .end local v5    # "iArr":[I
    .end local v6    # "newVisible":Z
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    .end local v8    # "str":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "newVisible":Z
    goto :goto_1

    .line 389
    .restart local v5    # "iArr":[I
    .restart local v7    # "set":Landroid/animation/AnimatorSet;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    goto :goto_2

    .line 399
    .restart local v0    # "access$1700":Landroid/support/v7/widget/Toolbar;
    .restart local v1    # "alpha":Landroid/animation/ObjectAnimator;
    .restart local v2    # "animatorArr":[Landroid/animation/Animator;
    .restart local v3    # "fArr":[F
    .restart local v9    # "str2":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 403
    .end local v0    # "access$1700":Landroid/support/v7/widget/Toolbar;
    .end local v2    # "animatorArr":[Landroid/animation/Animator;
    .end local v3    # "fArr":[F
    .end local v9    # "str2":Ljava/lang/String;
    :cond_8
    new-array v10, v13, [Landroid/animation/Animator;

    aput-object v1, v10, v12

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method public setToolbarTitleTextAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$4(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$4(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    shl-int/lit8 v1, p1, 0x18

    const v2, 0x6c737a

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 422
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$4;->lastTextAlpha:I

    .line 423
    return-void
.end method
