.class public Lcom/vkcoffee/android/navigation/ToolbarHelper;
.super Ljava/lang/Object;
.source "ToolbarHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static canGoBack(Landroid/app/Fragment;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasNavigationDrawer(Landroid/app/Fragment;)Z
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public static onToolbarNavigationClick(Landroid/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/vkcoffee/android/navigation/ToolbarHelper;->canGoBack(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1001e7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 38
    .local v0, "dl":Landroid/support/v4/widget/DrawerLayout;
    invoke-static {}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->getN1cEmenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    .line 39
    .local v1, "sm":Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    if-eqz v0, :cond_0

    .line 40
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "jeremy"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method public static onViewCreated(Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .param p0, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 16
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_0
    return-void
.end method
