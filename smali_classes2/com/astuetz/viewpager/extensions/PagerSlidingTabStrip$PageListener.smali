.class public Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$100(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$300(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 632
    .local v0, "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 635
    .end local v0    # "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 607
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$500(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 609
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$002(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)I

    .line 610
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v2, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$602(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;F)F

    .line 612
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$300(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V

    .line 614
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 616
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 618
    .local v0, "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 622
    .end local v0    # "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 639
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 641
    .local v0, "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 644
    .end local v0    # "delegatePageListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_0
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-static {v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$002(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)I

    .line 645
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->this$0:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->access$700(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;Z)V

    .line 649
    return-void
.end method
