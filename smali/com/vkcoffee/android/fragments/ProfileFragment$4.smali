.class Lcom/vkcoffee/android/fragments/ProfileFragment$4;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _list:Landroid/view/View;

.field buttonsView:Landroid/view/View;

.field currentAnim:Landroid/animation/Animator;

.field interpolator:Landroid/view/animation/Interpolator;

.field lastTextAlpha:I

.field overlay:Landroid/view/View;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field visible:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 1365
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->interpolator:Landroid/view/animation/Interpolator;

    .line 1366
    const/16 v0, 0xff

    iput v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->lastTextAlpha:I

    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    return-void
.end method


# virtual methods
.method public getToolbarTitleTextAlpha()I
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->lastTextAlpha:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 19

    .prologue
    .line 1371
    const/16 v8, 0xff

    .line 1372
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v14

    if-eqz v14, :cond_1

    .line 1373
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->overlay:Landroid/view/View;

    .line 1374
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    if-nez v14, :cond_0

    .line 1375
    const/16 v14, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->setToolbarTitleTextAlpha(I)V

    .line 1376
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 1454
    :cond_0
    :goto_0
    const/4 v14, 0x1

    return v14

    .line 1381
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->_list:Landroid/view/View;

    if-nez v14, :cond_2

    .line 1382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->_list:Landroid/view/View;

    .line 1384
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    if-nez v14, :cond_3

    .line 1385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->_list:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 1387
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->overlay:Landroid/view/View;

    if-nez v14, :cond_4

    .line 1388
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f10038d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->overlay:Landroid/view/View;

    .line 1390
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->buttonsView:Landroid/view/View;

    if-nez v14, :cond_5

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f10038e

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->buttonsView:Landroid/view/View;

    .line 1393
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    invoke-virtual {v14}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_0

    .line 1396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->buttonsView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_a

    .line 1397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->buttonsView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1401
    .local v7, "height":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v14

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v15}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v13, v14, v15

    .line 1402
    .local v13, "toolbarOffset":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v15}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v14, v13, :cond_b

    .line 1403
    :cond_6
    const/4 v10, 0x1

    .line 1407
    .local v10, "newVisible":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    if-eq v10, v14, :cond_9

    .line 1409
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    .line 1410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    if-eqz v14, :cond_7

    .line 1411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    invoke-virtual {v14}, Landroid/animation/Animator;->cancel()V

    .line 1412
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 1414
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1415
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    if-eqz v14, :cond_c

    .line 1416
    const/16 v7, 0xff

    .line 1420
    :goto_3
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v2

    .line 1422
    .local v2, "access$1700":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    if-eqz v14, :cond_d

    .line 1423
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1427
    .local v5, "f":F
    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1428
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1429
    .local v11, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x1

    new-array v3, v14, [Landroid/animation/Animator;

    .line 1430
    .local v3, "animatorArr":[Landroid/animation/Animator;
    const-string v12, "toolbarTitleTextAlpha"

    .line 1431
    .local v12, "str":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v9, v14, [I

    .line 1432
    .local v9, "iArr":[I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->visible:Z

    if-nez v14, :cond_8

    .line 1433
    const/4 v8, 0x0

    .line 1435
    :cond_8
    const/4 v14, 0x0

    aput v8, v9, v14

    .line 1436
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v3, v14

    .line 1437
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1438
    const-wide/16 v14, 0xc8

    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1439
    new-instance v14, Lcom/vkcoffee/android/fragments/ProfileFragment$4$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$4;)V

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1444
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->currentAnim:Landroid/animation/Animator;

    .line 1445
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 1447
    .end local v2    # "access$1700":Landroid/view/View;
    .end local v3    # "animatorArr":[Landroid/animation/Animator;
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v5    # "f":F
    .end local v9    # "iArr":[I
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    .end local v12    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v15}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    if-nez v14, :cond_0

    .line 1448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1449
    .local v6, "head":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->overlay:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->interpolator:Landroid/view/animation/Interpolator;

    const/16 v16, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v18

    sub-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const v18, 0x3e4ccccd    # 0.2f

    sub-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    const v17, 0x3f4ccccd    # 0.8f

    div-float v16, v16, v17

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1399
    .end local v6    # "head":Landroid/view/View;
    .end local v7    # "height":I
    .end local v10    # "newVisible":Z
    .end local v13    # "toolbarOffset":I
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "height":I
    goto/16 :goto_1

    .line 1405
    .restart local v13    # "toolbarOffset":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "newVisible":Z
    goto/16 :goto_2

    .line 1418
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1425
    .restart local v2    # "access$1700":Landroid/view/View;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "f":F
    goto/16 :goto_4
.end method

.method public setToolbarTitleTextAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    .line 1459
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 1460
    shl-int/lit8 v1, p1, 0x18

    const v2, 0xffffff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1462
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$4;->lastTextAlpha:I

    .line 1463
    return-void
.end method
