.class public Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "CheckinsListFragment.java"


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->offset:I

    return p1
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "_offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 13
    new-instance v1, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "place_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0, p2}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;-><init>(III)V

    new-instance v0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;Landroid/app/Fragment;)V

    .line 14
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 22
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->offset:I

    goto :goto_0
.end method
