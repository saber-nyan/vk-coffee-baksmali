.class Lcom/vkcoffee/android/fragments/ProfileFragment$12;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->loadInitial(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/users/GetFullProfile$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/app/Fragment;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->val$count:I

    .line 2136
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/users/GetFullProfile$Result;)V
    .locals 4
    .param p1, "res"    # Lcom/vkcoffee/android/api/users/GetFullProfile$Result;

    .prologue
    const/4 v3, 0x0

    .line 2138
    iget-object v1, p1, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;->profile:Lcom/vkcoffee/android/api/ExtendedUserProfile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2139
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v1, p1, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;->profile:Lcom/vkcoffee/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 2142
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p1, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;->profile:Lcom/vkcoffee/android/api/ExtendedUserProfile;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$28(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/api/ExtendedUserProfile;)V

    .line 2143
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$29(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 2144
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$30(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 2145
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isDeactivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2146
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 2157
    .end local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :goto_0
    return-void

    .line 2149
    .restart local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$31(Lcom/vkcoffee/android/fragments/ProfileFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 2150
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$32(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 2151
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->val$count:I

    invoke-static {v1, v3, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$33(Lcom/vkcoffee/android/fragments/ProfileFragment;II)V

    .line 2152
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->updateList()V

    .line 2153
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$34(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2156
    .end local v0    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080165

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080335

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$12$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/users/GetFullProfile$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$12;->success(Lcom/vkcoffee/android/api/users/GetFullProfile$Result;)V

    return-void
.end method
