.class public abstract Lcom/vk/attachpicker/simplescreen/BaseScreen;
.super Ljava/lang/Object;
.source "BaseScreen.java"


# instance fields
.field private isDestroyed:Z

.field private isResumed:Z

.field private parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

.field private screenView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isDestroyed:Z

    .line 13
    iput-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed:Z

    return-void
.end method


# virtual methods
.method public abstract createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->closeLastScreen()V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    iget-object v0, v0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainer()Lcom/vk/attachpicker/simplescreen/ScreenContainer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getScreenView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    return-object v0
.end method

.method public isAdded()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isDestroyed:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isDestroyed:Z

    .line 57
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed:Z

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed:Z

    .line 63
    return-void
.end method

.method public onTopPaddingChanged(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    .line 43
    return-void
.end method

.method protected setParentLayout(Lcom/vk/attachpicker/simplescreen/ScreenContainer;)V
    .locals 2
    .param p1, "layout"    # Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    if-eq v1, p1, :cond_1

    .line 30
    iput-object p1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    .line 31
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->screenView:Landroid/view/View;

    .line 39
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V
    .locals 1
    .param p1, "fragment"    # Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/BaseScreen;->parentLayout:Lcom/vk/attachpicker/simplescreen/ScreenContainer;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 79
    :cond_0
    return-void
.end method
