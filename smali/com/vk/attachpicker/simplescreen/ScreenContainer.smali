.class public Lcom/vk/attachpicker/simplescreen/ScreenContainer;
.super Landroid/widget/FrameLayout;
.source "ScreenContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;
    }
.end annotation


# instance fields
.field private onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

.field protected parentActivity:Landroid/app/Activity;

.field private final screensStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/simplescreen/BaseScreen;",
            ">;"
        }
    .end annotation
.end field

.field private topPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    .line 22
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private hideAll()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method private pauseScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V
    .locals 2
    .param p1, "screen"    # Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .prologue
    .line 161
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vk/attachpicker/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onPause()V

    .line 167
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    return-void
.end method

.method private removeScreenFromStack(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V
    .locals 2
    .param p1, "screen"    # Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->pauseScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 138
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onDestroy()V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->setParentLayout(Lcom/vk/attachpicker/simplescreen/ScreenContainer;)V

    .line 143
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public closeLastScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/simplescreen/BaseScreen;

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->removeScreenFromStack(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 113
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .line 116
    .local v0, "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->hideAll()V

    .line 117
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_0
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onResume()V

    .line 129
    .end local v0    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    invoke-interface {v1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;->onDismiss()V

    .line 134
    :cond_1
    return-void

    .line 120
    .restart local v0    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :cond_2
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getScreenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->closeLastScreen()V

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;->onDismiss()V

    .line 83
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/simplescreen/BaseScreen;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->removeScreenFromStack(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v0

    .line 58
    .local v0, "currentScreen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onPause()V

    .line 61
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v0

    .line 48
    .local v0, "currentScreen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onResume()V

    .line 51
    :cond_0
    return-void
.end method

.method public onTopPaddingChanged(I)V
    .locals 1
    .param p1, "topPadding"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->topPadding:I

    .line 89
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onTopPaddingChanged(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->onDismissListener:Lcom/vk/attachpicker/simplescreen/ScreenContainer$OnDismissListener;

    .line 41
    return-void
.end method

.method public showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V
    .locals 1
    .param p1, "screen"    # Lcom/vk/attachpicker/simplescreen/BaseScreen;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->getCurrentScreen()Lcom/vk/attachpicker/simplescreen/BaseScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->pauseScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->setParentLayout(Lcom/vk/attachpicker/simplescreen/ScreenContainer;)V

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->addView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p1}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onResume()V

    .line 105
    iget v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->topPadding:I

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onTopPaddingChanged(I)V

    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/simplescreen/ScreenContainer;->screensStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method
