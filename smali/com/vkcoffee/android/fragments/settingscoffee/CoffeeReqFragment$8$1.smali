.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$users:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$act:Landroid/app/Activity;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$progress:Landroid/app/ProgressDialog;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$act:Landroid/app/Activity;

    const v2, 0x7f080162

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 194
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$act:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 195
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 196
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 191
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$8$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method
