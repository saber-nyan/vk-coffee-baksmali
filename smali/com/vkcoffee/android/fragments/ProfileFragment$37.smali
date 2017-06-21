.class Lcom/vkcoffee/android/fragments/ProfileFragment$37;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->toggleNewsHidden()V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5517
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5519
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5520
    .local v0, "activity":Landroid/content/Context;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5521
    .local v2, "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    new-array v1, v6, [Ljava/lang/Object;

    .line 5522
    .local v1, "objArr":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const v4, 0x7f080251

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v5

    .line 5523
    const v3, 0x7f080577

    invoke-virtual {v2, v3, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5524
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v3

    iput-boolean v6, v3, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isHiddenFromFeed:Z

    .line 5525
    return-void

    .line 5522
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$37;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    goto :goto_0
.end method
