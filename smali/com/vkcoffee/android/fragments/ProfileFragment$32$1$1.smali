.class Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->this$2:Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->val$msg:Ljava/lang/String;

    .line 5420
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 5422
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->this$2:Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;)Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 5423
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->this$2:Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;)Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->invalidateOptionsMenu()V

    .line 5424
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->this$2:Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;)Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 5425
    return-void
.end method
