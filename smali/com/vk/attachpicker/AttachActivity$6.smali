.class Lcom/vk/attachpicker/AttachActivity$6;
.super Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;
.source "AttachActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/AttachActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/AttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/AttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/AttachActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 11
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slideOffset"    # F

    .prologue
    const/4 v10, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    .line 318
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1300(Lcom/vk/attachpicker/AttachActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v6}, Lcom/vk/attachpicker/AttachActivity;->access$500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ContentViewPager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vk/attachpicker/widget/ContentViewPager;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v7}, Lcom/vk/attachpicker/AttachActivity;->access$1300(Lcom/vk/attachpicker/AttachActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 321
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ContentViewPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/widget/ContentViewPager;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v6}, Lcom/vk/attachpicker/AttachActivity;->access$900(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v6}, Lcom/vk/attachpicker/AttachActivity;->access$1400(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v4, v5, v6

    .line 322
    .local v4, "ty":I
    if-ltz v4, :cond_0

    .line 323
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1400(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v5

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 329
    :goto_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 330
    .local v0, "border":F
    cmpg-float v5, p2, v9

    if-gez v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ToolbarContainer;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/vk/attachpicker/widget/ToolbarContainer;->setAlpha(F)V

    .line 332
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1600(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 333
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ToolbarContainer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/widget/ToolbarContainer;->setVisibility(I)V

    .line 344
    :goto_1
    cmpl-float v5, p2, v8

    if-ltz v5, :cond_2

    .line 345
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$900(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v6}, Lcom/vk/attachpicker/AttachActivity;->access$1700(Lcom/vk/attachpicker/AttachActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->setBackgroundColor(I)V

    .line 352
    :goto_2
    return-void

    .line 325
    .end local v0    # "border":F
    :cond_0
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1400(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 335
    .restart local v0    # "border":F
    :cond_1
    sub-float v5, p2, v9

    const v6, 0x3e4ccccc    # 0.19999999f

    div-float v3, v5, v6

    .line 336
    .local v3, "realSlide":F
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ToolbarContainer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/vk/attachpicker/widget/ToolbarContainer;->setAlpha(F)V

    .line 337
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1600(Lcom/vk/attachpicker/AttachActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 338
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ToolbarContainer;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/vk/attachpicker/widget/ToolbarContainer;->setVisibility(I)V

    goto :goto_1

    .line 347
    .end local v3    # "realSlide":F
    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v8, p2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    neg-float v2, v5

    .line 348
    .local v2, "normalizedOffset":F
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$1700(Lcom/vk/attachpicker/AttachActivity;)I

    move-result v5

    invoke-static {v5, v10, v2}, Lcom/vk/attachpicker/util/Utils;->interpolateColors(IIF)I

    move-result v1

    .line 349
    .local v1, "color":I
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5}, Lcom/vk/attachpicker/AttachActivity;->access$900(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/design/widget/CoordinatorLayout;->setBackgroundColor(I)V

    .line 350
    iget-object v5, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v5, v1}, Lcom/vk/attachpicker/AttachActivity;->access$1800(Lcom/vk/attachpicker/AttachActivity;I)V

    goto :goto_2
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 291
    if-eq p2, v0, :cond_0

    if-eq p2, v2, :cond_0

    .line 292
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v1}, Lcom/vk/attachpicker/AttachActivity;->access$900(Lcom/vk/attachpicker/AttachActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 295
    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$1000(Lcom/vk/attachpicker/AttachActivity;)V

    .line 308
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v1}, Lcom/vk/attachpicker/AttachActivity;->access$500(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/widget/ContentViewPager;

    move-result-object v1

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/widget/ContentViewPager;->setSwipeEnabled(Z)V

    .line 303
    if-ne p2, v3, :cond_3

    .line 304
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$1100(Lcom/vk/attachpicker/AttachActivity;)Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/AttachActivity$FragmentAdapter;->ensureEnableAll()V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/AttachActivity$6;->this$0:Lcom/vk/attachpicker/AttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/AttachActivity;->access$1200(Lcom/vk/attachpicker/AttachActivity;)V

    goto :goto_0

    .line 300
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTargetStateChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetState"    # I

    .prologue
    .line 312
    return-void
.end method
