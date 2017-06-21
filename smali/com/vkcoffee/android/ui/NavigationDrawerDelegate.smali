.class public Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
.super Ljava/lang/Object;
.source "NavigationDrawerDelegate.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.implements Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;


# static fields
.field private static staticSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# instance fields
.field private activity:Landroid/app/Activity;

.field private content:Landroid/view/View;

.field private drawerOpen:Z

.field private mStartDragging:Z

.field private mTabs:I

.field private menu:Landroid/view/ViewGroup;

.field private menuList:Lcom/vkcoffee/android/MenuListView;

.field private slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field private topLevel:Z

.field private useToggle:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "useToggle"    # Z
    .param p3, "topLevel"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->useToggle:Z

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->mTabs:I

    .line 74
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    .line 75
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->topLevel:Z

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Lcom/vkcoffee/android/MenuListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    return-object v0
.end method

.method public static getN1cEmenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->staticSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.andoroid.HIDE_EMOJI_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected static setN1cEmenu(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0
    .param p0, "n1cEmenu"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .prologue
    .line 68
    sput-object p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->staticSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 69
    return-void
.end method

.method private updateMenuMode()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->mTabs:I

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 306
    :cond_1
    return-void
.end method

.method public closeMenu()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public isDrawerOpen()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v2, v2, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_3

    .line 260
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "jeremy"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V

    move v0, v1

    .line 263
    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    :cond_4
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 189
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "jeremy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateMenuMode()V

    .line 193
    :cond_0
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 250
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    .line 244
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 218
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    cmpl-float v1, p2, v3

    if-nez v1, :cond_3

    .line 219
    :cond_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->mStartDragging:Z

    .line 226
    :cond_1
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "normalSwipe"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MenuListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v3, p2

    mul-float v0, v1, v2

    .line 228
    .local v0, "moveFactorC":F
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->content:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/MenuListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    iget-object v1, v1, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setTranslationX(F)V

    .line 232
    .end local v0    # "moveFactorC":F
    :cond_2
    return-void

    .line 220
    :cond_3
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->mStartDragging:Z

    if-nez v1, :cond_1

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->mStartDragging:Z

    .line 222
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->hideKeyboard()V

    .line 223
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/MenuListView;->prepare()V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    .line 288
    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    .line 284
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/MenuListView;->setExpansion(F)V

    .line 280
    return-void
.end method

.method public onPostCreate()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 209
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "jeremy"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    :cond_0
    invoke-interface {p1, v4, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 212
    :cond_1
    return-void

    .line 201
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 202
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/SearchView;

    if-eqz v3, :cond_3

    .line 203
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v3, :cond_3

    .line 205
    check-cast v2, Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->drawerOpen:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->onVisibilityChanged(Z)V

    .line 200
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 297
    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/16 v9, 0x15

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 80
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "animVKApp"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    const v5, 0x7f04001f

    const v6, 0x7f040020

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 84
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_1

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "colorNavBar"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, -0xc4a079

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 88
    :cond_1
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/vkcoffee/android/FragmentWrapperActivity;

    if-eqz v4, :cond_3

    .line 89
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_2

    instance-of v4, p1, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, -0xc4a079

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    move-object v4, p1

    .line 91
    check-cast v4, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setStatusBarColor(I)V

    move-object v4, p1

    .line 92
    check-cast v4, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-virtual {v4, v7}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;->setDrawStatusBar(Z)V

    .line 93
    invoke-virtual {p1, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 95
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 170
    .end local p1    # "contentView":Landroid/view/View;
    :goto_0
    return-object p1

    .line 98
    .restart local p1    # "contentView":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_6

    const v4, 0x7f030080

    :goto_1
    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    .line 99
    iget-object v3, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    .line 100
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->content:Landroid/view/View;

    .line 101
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    new-instance v4, Lcom/vkcoffee/android/MenuListView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->topLevel:Z

    invoke-direct {v4, v5, p0, v6}, Lcom/vkcoffee/android/MenuListView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;Z)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    .line 103
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v4, v4, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v4, :cond_9

    .line 105
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "jeremy"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 106
    iget-object v1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    .line 107
    .local v1, "menu":Landroid/support/v4/widget/DrawerLayout;
    const v4, 0x7f02026a

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 108
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_4

    .line 109
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x44000000    # 512.0f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 110
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 111
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4, v7}, Lcom/vkcoffee/android/MenuListView;->setFitsSystemWindows(Z)V

    .line 113
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    new-instance v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x3

    invoke-direct {v5, v6, v10, v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v1, p0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 169
    .end local v1    # "menu":Landroid/support/v4/widget/DrawerLayout;
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 170
    iget-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 98
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    const v4, 0x7f03007f

    goto :goto_1

    .line 116
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_7
    new-instance v4, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 117
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 118
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 119
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v5, 0x7f020319

    invoke-virtual {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 120
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V

    .line 121
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4, v11}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 122
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 123
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/vkcoffee/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 124
    new-instance v4, Lcom/vkcoffee/android/MenuListView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v8}, Lcom/vkcoffee/android/MenuListView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;Z)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    .line 125
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 126
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    new-instance v5, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$1;-><init>(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V

    invoke-virtual {v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_8

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "jeremyFix"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 133
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 135
    :cond_8
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->slidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->setN1cEmenu(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    .line 136
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 139
    :cond_9
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    instance-of v4, v4, Landroid/support/v4/widget/SlidingPaneLayout;

    if-eqz v4, :cond_5

    .line 140
    iget-object v2, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menu:Landroid/view/ViewGroup;

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout;

    .line 141
    .local v2, "menu2":Landroid/support/v4/widget/SlidingPaneLayout;
    invoke-virtual {v2, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->setFitsSystemWindows(Z)V

    .line 142
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    new-instance v5, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    const/high16 v6, 0x43900000    # 288.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-direct {v5, v6, v10}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v8, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/high16 v4, 0x42a80000    # 84.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 145
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->content:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 147
    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->setSliderFadeColor(I)V

    .line 148
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_a

    .line 149
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x44000000    # 512.0f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 150
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4, v7}, Lcom/vkcoffee/android/MenuListView;->setFitsSystemWindows(Z)V

    .line 151
    invoke-virtual {v2, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->setClipToPadding(Z)V

    .line 152
    const/16 v4, 0x500

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->setSystemUiVisibility(I)V

    .line 154
    :cond_a
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4, v11}, Lcom/vkcoffee/android/MenuListView;->setExpansion(F)V

    .line 155
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$2;-><init>(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 162
    iget-object v4, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate$3;-><init>(Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_2
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    .line 175
    return-void
.end method

.method public updateUserInfo()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->menuList:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->updateUserInfo()V

    .line 185
    :cond_0
    return-void
.end method
