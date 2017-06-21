.class Lcom/vkcoffee/android/VKActivity$1;
.super Landroid/app/ActionBar;
.source "VKActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VKActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VKActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VKActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/VKActivity$1;->this$0:Lcom/vkcoffee/android/VKActivity;

    .line 53
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 54
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 55
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;
    .param p2, "var2"    # I

    .prologue
    .line 56
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;
    .param p2, "var2"    # I
    .param p3, "var3"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;
    .param p2, "var2"    # Z

    .prologue
    .line 58
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "var1"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/VKActivity$1;->this$0:Lcom/vkcoffee/android/VKActivity;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 104
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 105
    return-void
.end method

.method public removeTabAt(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 106
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 107
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    return-void
.end method

.method public setCustomView(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 109
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 110
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 111
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 113
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 0
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    .line 114
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 115
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 119
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "var1"    # Landroid/widget/SpinnerAdapter;
    .param p2, "var2"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 121
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 122
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "var1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 124
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 126
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "var1"    # I

    .prologue
    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 129
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
