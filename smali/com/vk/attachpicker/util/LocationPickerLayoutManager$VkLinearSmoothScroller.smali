.class Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LocationPickerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/LocationPickerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VkLinearSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    .line 85
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->updateDecelerateInterpolation()V

    .line 87
    return-void
.end method

.method private updateDecelerateInterpolation()V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    const-class v1, Landroid/support/v7/widget/LinearSmoothScroller;

    const-string/jumbo v2, "mDecelerateInterpolator"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 102
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 65
    .local v1, "res":I
    iget-object v3, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-static {v3}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->access$000(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 67
    .local v0, "appendDelta":I
    :goto_0
    if-nez v1, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 69
    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 80
    .end local v0    # "appendDelta":I
    :cond_0
    :goto_1
    return v0

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-static {v3}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->access$100(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)I

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-static {v4}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->access$200(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)I

    move-result v4

    sub-int v0, v3, v4

    goto :goto_0

    .line 70
    .restart local v0    # "appendDelta":I
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-static {v2}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->access$300(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-static {v2}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->access$300(Lcom/vk/attachpicker/util/LocationPickerLayoutManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_1

    .line 75
    :cond_3
    if-gez v1, :cond_4

    .line 76
    sub-int v0, v1, v0

    goto :goto_1

    .line 77
    :cond_4
    if-lez v1, :cond_5

    .line 78
    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 80
    goto :goto_1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 96
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/util/LocationPickerLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/util/LocationPickerLayoutManager;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/util/LocationPickerLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
