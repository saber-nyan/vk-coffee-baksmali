.class public Lcom/vkcoffee/android/FragmentWrapperActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "FragmentWrapperActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ResulterProvider;
.implements Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;


# instance fields
.field private detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

.field private mResulters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ActivityResulter;",
            ">;"
        }
    .end annotation
.end field

.field private navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    return-void
.end method

.method private setupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "intro"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/FragmentWrapperActivity;->setContentView(Landroid/view/View;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-direct {v0, p0, v2, v2}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->setContentView(Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuZone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doubleTap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 65
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNavDelegate()Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    return-object v0
.end method

.method protected initFragment()Landroid/app/Fragment;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ui/FragmentHelper;->extractFragment(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FragmentHelper;->extractArgs(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {p0, v0, v1, v2}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ActivityResulter;

    .line 169
    .local v0, "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    invoke-interface {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/ActivityResulter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 114
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vkcoffee/android/fragments/BackListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vkcoffee/android/fragments/BackListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    :cond_1
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onBackPressed()V

    .line 118
    :cond_2
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "animVKApp"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const v1, 0x7f04001e

    const v2, 0x7f040021

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/FragmentWrapperActivity;->overridePendingTransition(II)V

    .line 123
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "contentView":Landroid/widget/FrameLayout;
    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 44
    :cond_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->setupMenu(Landroid/view/View;)V

    .line 46
    new-instance v1, Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;)V

    iput-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Swipe"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "speed"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeMinVelocity(I)V

    .line 48
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Swipe"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "swipeMin"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeXMinDistance(I)V

    .line 49
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Swipe"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "swipeMax"

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeXMaxDistance(I)V

    .line 50
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Swipe"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "minY"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeYMinDistance(I)V

    .line 51
    iget-object v1, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Swipe"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "maxY"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeYMaxDistance(I)V

    .line 53
    if-nez p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->initFragment()Landroid/app/Fragment;

    .line 56
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDoubleTap()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doubleTap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->openDrawer()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->closeDrawer()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-eq v2, v3, :cond_1

    .line 155
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f10001b

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 158
    .local v0, "f":Landroid/app/Fragment;
    instance-of v2, v0, Lcom/vkcoffee/android/fragments/HomeListener;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/vkcoffee/android/fragments/HomeListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/HomeListener;->onHomePressed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onPause()V

    .line 138
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 139
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 143
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateUserInfo()V

    .line 147
    :cond_0
    return-void
.end method

.method public onSwipe(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 73
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuZone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->openDrawer()V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->closeDrawer()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/FragmentWrapperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/FragmentWrapperActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/FragmentWrapperActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-void
.end method
