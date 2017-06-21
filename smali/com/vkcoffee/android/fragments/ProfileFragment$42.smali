.class Lcom/vkcoffee/android/fragments/ProfileFragment$42;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->togglePostSubscription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5662
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5664
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isSubscribed:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isSubscribed:Z

    .line 5665
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5666
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->invalidateOptionsMenu()V

    .line 5667
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5668
    .local v0, "activity":Landroid/content/Context;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5669
    .local v3, "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isSubscribed:Z

    if-eqz v4, :cond_2

    const v1, 0x7f08051f

    .line 5670
    .local v1, "i":I
    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 5671
    .local v2, "objArr":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    :goto_2
    aput-object v4, v2, v5

    .line 5672
    invoke-virtual {v3, v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5674
    .end local v0    # "activity":Landroid/content/Context;
    .end local v1    # "i":I
    .end local v2    # "objArr":[Ljava/lang/Object;
    .end local v3    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 5664
    goto :goto_0

    .line 5669
    .restart local v0    # "activity":Landroid/content/Context;
    .restart local v3    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_2
    const v1, 0x7f08055f

    goto :goto_1

    .line 5671
    .restart local v1    # "i":I
    .restart local v2    # "objArr":[Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$42;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const v6, 0x7f080251

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
