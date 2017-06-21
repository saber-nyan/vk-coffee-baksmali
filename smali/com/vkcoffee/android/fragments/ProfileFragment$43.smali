.class Lcom/vkcoffee/android/fragments/ProfileFragment$43;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->doToggleBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5679
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5682
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    .line 5683
    .local v0, "access$400":Lcom/vkcoffee/android/api/ExtendedUserProfile;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v5, :cond_0

    .line 5684
    const/4 v4, 0x0

    .line 5688
    .local v4, "z":Z
    :goto_0
    iput-boolean v4, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 5689
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->invalidateOptionsMenu()V

    .line 5690
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 5691
    .local v1, "activity":Landroid/content/Context;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 5692
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-boolean v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_1

    const v2, 0x7f080575

    .line 5693
    .local v2, "i":I
    :goto_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5694
    return-void

    .line 5686
    .end local v1    # "activity":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "z":Z
    :cond_0
    const/4 v4, 0x1

    .restart local v4    # "z":Z
    goto :goto_0

    .line 5692
    .restart local v1    # "activity":Landroid/content/Context;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    const v2, 0x7f080576

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$43;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v5, v5, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v5, :cond_3

    const v2, 0x7f08057e

    goto :goto_1

    :cond_3
    const v2, 0x7f08057f

    goto :goto_1
.end method
