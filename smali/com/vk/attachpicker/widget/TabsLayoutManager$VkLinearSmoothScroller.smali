.class Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "TabsLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/TabsLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VkLinearSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/TabsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/widget/TabsLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/widget/TabsLayoutManager;

    .line 43
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;->updateDecelerateInterpolation()V

    .line 45
    return-void
.end method

.method private updateDecelerateInterpolation()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    const-class v1, Landroid/support/v7/widget/LinearSmoothScroller;

    const-string/jumbo v2, "mDecelerateInterpolator"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 60
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 54
    const/high16 v0, 0x43160000    # 150.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TabsLayoutManager$VkLinearSmoothScroller;->this$0:Lcom/vk/attachpicker/widget/TabsLayoutManager;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/TabsLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
