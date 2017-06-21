.class Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$32;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$32;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->val$msg:Ljava/lang/String;

    .line 5418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;)Lcom/vkcoffee/android/fragments/ProfileFragment$32;
    .locals 1

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5420
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountBanUser;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountBanUser;-><init>(IZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->val$msg:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;Landroid/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountBanUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 5426
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$32$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$32;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$32;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$32;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 5427
    return-void
.end method
