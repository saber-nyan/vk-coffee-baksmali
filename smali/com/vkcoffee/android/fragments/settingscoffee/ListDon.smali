.class public Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "ListDon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->setActionable(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;II)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon$GetOutRequests;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 27
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "don"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u041c\u0435\u0446\u0435\u043d\u0430\u0442\u044b"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    const-string v0, "\u0414\u0430\u043d\u043d\u044b\u0435 \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u044b"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 52
    return-void

    .line 49
    :cond_0
    const-string v0, "\u0411\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/ListDon;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
