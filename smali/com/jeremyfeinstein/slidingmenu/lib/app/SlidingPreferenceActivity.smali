.class public Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SlidingPreferenceActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 42
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 148
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 149
    .end local v0    # "b":Z
    :goto_0
    return v0

    .restart local v0    # "b":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->setBehindContentView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 90
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 67
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 140
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 119
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showMenu()V

    .line 126
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 133
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingPreferenceActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 112
    return-void
.end method
