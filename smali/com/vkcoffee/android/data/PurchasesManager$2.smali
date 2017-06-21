.class Lcom/vkcoffee/android/data/PurchasesManager$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/PurchasesManager;->purchaseFreeItem(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/PurchasesManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/PurchasesManager;

.field final synthetic val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

.field final synthetic val$product:Lcom/vkcoffee/android/data/orm/Product;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/PurchasesManager;Landroid/content/Context;Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$2;, "Lcom/vkcoffee/android/data/PurchasesManager$2;"
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    iput-object p3, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    iput-object p4, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/vkcoffee/android/data/PurchasesManager$Result;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$2;, "Lcom/vkcoffee/android/data/PurchasesManager$2;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v1}, Lcom/vkcoffee/android/data/PurchasesManager;->access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 241
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    :cond_1
    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->success:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->state:I

    if-ne v0, v3, :cond_3

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->access$402(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->access$502(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/orm/Product;)Lcom/vkcoffee/android/data/orm/Product;

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/data/orm/Product;->afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$2;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 254
    :cond_3
    return-void

    .line 242
    :cond_4
    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_message:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$2;, "Lcom/vkcoffee/android/data/PurchasesManager$2;"
    check-cast p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/PurchasesManager$2;->success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    return-void
.end method
