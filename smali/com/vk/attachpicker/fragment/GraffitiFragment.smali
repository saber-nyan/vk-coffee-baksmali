.class public Lcom/vk/attachpicker/fragment/GraffitiFragment;
.super Lme/grishka/appkit/fragments/BaseRecyclerFragment;
.source "GraffitiFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;,
        Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;,
        Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/fragments/BaseRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;",
        "Lcom/vk/attachpicker/SupportExternalToolbarContainer;"
    }
.end annotation


# static fields
.field private static final GRAFFITI_REQUEST:I = 0x96


# instance fields
.field private adapter:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

.field protected currentRequest:Lme/grishka/appkit/api/APIRequest;

.field private graffitiAvatar:Ljava/lang/String;

.field private graffitiTitle:Ljava/lang/String;

.field private header:Landroid/widget/LinearLayout;

.field private newGraffitiButton:Landroid/view/View;

.field private toolbar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;-><init>(I)V

    .line 50
    const v0, 0x7f030116

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->setListLayoutId(I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/fragment/GraffitiFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GraffitiFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/fragment/GraffitiFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GraffitiFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->header:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 128
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetRecentGraffities;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/messages/MessagesGetRecentGraffities;-><init>()V

    new-instance v1, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$1;-><init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/app/Fragment;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetRecentGraffities;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 143
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 144
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getAdapter()Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->adapter:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;-><init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->adapter:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->adapter:Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;

    return-object v0
.end method

.method synthetic lambda$onCreateContentView$53(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vk/attachpicker/GraffitiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiAvatar:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v1, "graffiti_avatar"

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 73
    const-string/jumbo v1, "graffiti_title"

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :cond_1
    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 120
    .end local v0    # "a":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_1
    const/16 v1, 0x96

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 113
    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 114
    instance-of v1, v0, Lcom/vk/attachpicker/AttachActivity;

    if-eqz v1, :cond_2

    .line 115
    check-cast v0, Lcom/vk/attachpicker/AttachActivity;

    .end local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/vk/attachpicker/AttachActivity;->superFinish()V

    goto :goto_0

    .line 117
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->loadData()V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "graffiti_avatar"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiAvatar:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "graffiti_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->graffitiTitle:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v0, 0x7f03011f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->header:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->header:Landroid/widget/LinearLayout;

    const v1, 0x7f100305

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->newGraffitiButton:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->newGraffitiButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GraffitiFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 87
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 88
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->setRefreshEnabled(Z)V

    .line 90
    return-void
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->toolbar:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030129

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->toolbar:Landroid/view/ViewGroup;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment;->toolbar:Landroid/view/ViewGroup;

    return-object v0
.end method
