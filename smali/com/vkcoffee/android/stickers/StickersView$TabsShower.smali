.class Lcom/vkcoffee/android/stickers/StickersView$TabsShower;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "StickersView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabsShower"
.end annotation


# instance fields
.field private animator:Landroid/view/ViewPropertyAnimator;

.field private mScrollThreshold:I

.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickersView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/StickersView;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 395
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->mScrollThreshold:I

    return-void
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/stickers/StickersView$TabsShower;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickersView$TabsShower;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->toggleTabs(ZZ)V

    return-void
.end method

.method private toggleTabs(ZZ)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 428
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersView;->access$700(Lcom/vkcoffee/android/stickers/StickersView;)Z

    move-result v3

    if-ne v3, p1, :cond_0

    if-eqz p2, :cond_1

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v3, p1}, Lcom/vkcoffee/android/stickers/StickersView;->access$702(Lcom/vkcoffee/android/stickers/StickersView;Z)Z

    .line 430
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersView;->access$800(Lcom/vkcoffee/android/stickers/StickersView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 431
    .local v0, "height":I
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 432
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersView;->access$800(Lcom/vkcoffee/android/stickers/StickersView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 433
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    new-instance v3, Lcom/vkcoffee/android/stickers/StickersView$TabsShower$1;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/stickers/StickersView$TabsShower$1;-><init>(Lcom/vkcoffee/android/stickers/StickersView$TabsShower;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 451
    .end local v0    # "height":I
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    return-void

    .line 448
    .restart local v0    # "height":I
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 449
    .local v1, "translationY":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersView;->access$800(Lcom/vkcoffee/android/stickers/StickersView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/stickers/StickersView;->access$1000()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->animator:Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .end local v1    # "translationY":I
    :cond_3
    move v1, v0

    .line 448
    goto :goto_1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 412
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 401
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 405
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickersView;->access$600(Lcom/vkcoffee/android/stickers/StickersView;)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-direct {p0, v2, v2}, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->toggleTabs(ZZ)V

    .line 407
    return-void

    .line 405
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 418
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->mScrollThreshold:I

    if-le v0, v2, :cond_0

    .line 423
    if-gez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/stickers/StickersView$TabsShower;->toggleTabs(ZZ)V

    .line 425
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 423
    goto :goto_0
.end method
