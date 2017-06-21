.class Lcom/vkcoffee/android/SendActivity$1;
.super Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;
.source "SendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/SendActivity;->copyFromRestrictedProvider()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SendActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/SendActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/SendActivity;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/SendActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x1

    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    invoke-virtual {v2}, Lcom/vkcoffee/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 549
    const-string/jumbo v3, "android.intent.extra.STREAM"

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v2}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 556
    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/SendActivity;->setIntent(Landroid/content/Intent;)V

    .line 557
    iget-object v2, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/SendActivity;->access$000(Lcom/vkcoffee/android/SendActivity;)V

    .line 558
    return-void

    .line 546
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "android.intent.action.SEND"

    goto :goto_0

    .line 551
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v1, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 553
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 539
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 540
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 541
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/SendActivity;->finish()V

    .line 542
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$1;->val$progress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkcoffee/android/SendActivity$1;->this$0:Lcom/vkcoffee/android/SendActivity;

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/SendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/vkcoffee/android/SendActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 535
    return-void
.end method
