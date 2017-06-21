.class public Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SlidingFragmentActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 43
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    .line 23
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 149
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 150
    .end local v0    # "b":Z
    :goto_0
    return v0

    .restart local v0    # "b":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 91
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 68
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 141
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 120
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showMenu()V

    .line 127
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 134
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 113
    return-void
.end method
