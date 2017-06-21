.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameNewsTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

.field subscribeButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    const v0, 0x7f03002f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 35
    const v0, 0x7f100134

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->subscribeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method private joinGroup()V
    .locals 3

    .prologue
    .line 60
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsJoin;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->appId:I

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/vkcoffee/android/api/groups/GroupsJoin;-><init>(IZ)V

    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$1;

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$1;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;Landroid/content/Context;)V

    .line 61
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsJoin;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 78
    return-void
.end method

.method private leaveGroup()V
    .locals 3

    .prologue
    .line 81
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsLeave;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->appId:I

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/groups/GroupsLeave;-><init>(I)V

    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$2;

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$2;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsLeave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 100
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;)V
    .locals 2
    .param p1, "data"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    .line 41
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->subscribeButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->isMember:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0801c0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 42
    return-void

    .line 41
    :cond_0
    const v0, 0x7f0801bf

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle$Data;->isMember:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->leaveGroup()V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameNewsTitle;->joinGroup()V

    goto :goto_0
.end method
