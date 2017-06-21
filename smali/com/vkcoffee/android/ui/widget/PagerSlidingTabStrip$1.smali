.class Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;->this$0:Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 44
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "jeremy"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->getN1cEmenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 46
    .local v0, "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    if-nez p1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;->this$0:Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->access$0(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->removeIgnoredView(Landroid/view/View;)V

    .line 52
    .end local v0    # "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;->this$0:Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->access$1(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;I)V

    .line 53
    return-void

    .line 49
    .restart local v0    # "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip$1;->this$0:Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;->access$0(Lcom/vkcoffee/android/ui/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addIgnoredView(Landroid/view/View;)V

    goto :goto_0
.end method
