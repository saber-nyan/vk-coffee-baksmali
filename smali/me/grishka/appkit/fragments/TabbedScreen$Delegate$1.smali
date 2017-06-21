.class Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;
.super Ljava/lang/Object;
.source "TabbedScreen.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/TabbedScreen$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 61
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    .line 39
    .local v1, "pos":I
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$0(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Lme/grishka/appkit/views/DisableableViewPager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lme/grishka/appkit/views/DisableableViewPager;->setCurrentItem(I)V

    .line 40
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "jeremy"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->getN1cEmenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    .line 42
    .local v2, "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    if-nez v1, :cond_2

    .line 43
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$0(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Lme/grishka/appkit/views/DisableableViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->removeIgnoredView(Landroid/view/View;)V

    .line 48
    .end local v2    # "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    :cond_0
    :goto_0
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$1(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 49
    .local v0, "f":Landroid/app/Fragment;
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$2(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v0, Lme/grishka/appkit/fragments/LoaderFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$3(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    check-cast v3, Lme/grishka/appkit/fragments/LoaderFragment;

    iget-boolean v3, v3, Lme/grishka/appkit/fragments/LoaderFragment;->loaded:Z

    if-nez v3, :cond_1

    .line 50
    check-cast v0, Lme/grishka/appkit/fragments/LoaderFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0}, Lme/grishka/appkit/fragments/LoaderFragment;->loadData()V

    .line 51
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$3(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v3, v1}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->onPageSelected(I)V

    .line 54
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-virtual {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->invalidateOptionsMenu()V

    .line 55
    return-void

    .line 45
    .restart local v2    # "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    :cond_2
    iget-object v3, p0, Lme/grishka/appkit/fragments/TabbedScreen$Delegate$1;->this$1:Lme/grishka/appkit/fragments/TabbedScreen$Delegate;

    invoke-static {v3}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;->access$0(Lme/grishka/appkit/fragments/TabbedScreen$Delegate;)Lme/grishka/appkit/views/DisableableViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addIgnoredView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 58
    return-void
.end method
