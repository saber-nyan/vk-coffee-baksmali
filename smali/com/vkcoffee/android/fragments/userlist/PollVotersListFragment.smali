.class public Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "PollVotersListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsGetVoters;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "oid"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "poll_id"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "answer_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;-><init>(IIIII)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/PollVotersListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 14
    return-void
.end method
