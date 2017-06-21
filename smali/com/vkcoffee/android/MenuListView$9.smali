.class Lcom/vkcoffee/android/MenuListView$9;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$9;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "lastVisible"    # I
    .param p4, "visibleCount"    # I

    .prologue
    .line 1436
    if-nez p2, :cond_1

    .line 1437
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$9;->this$0:Lcom/vkcoffee/android/MenuListView;

    iget-object v2, v2, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1438
    .local v1, "top":I
    if-ltz v1, :cond_0

    .line 1439
    const/4 v0, 0x0

    .line 1446
    .end local v1    # "top":I
    .local v0, "alpha":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$9;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$25(Lcom/vkcoffee/android/MenuListView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1447
    return-void

    .line 1441
    .end local v0    # "alpha":I
    .restart local v1    # "top":I
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    neg-int v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1443
    .restart local v0    # "alpha":I
    goto :goto_0

    .line 1444
    .end local v0    # "alpha":I
    .end local v1    # "top":I
    :cond_1
    const/16 v0, 0xff

    .restart local v0    # "alpha":I
    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 1432
    return-void
.end method
