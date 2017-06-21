.class Lcom/vkcoffee/android/data/PurchasesManager$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/PurchasesManager;->purchaseFromBalance(Lcom/vkcoffee/android/data/orm/Product;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)V
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
    .line 262
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$3;, "Lcom/vkcoffee/android/data/PurchasesManager$3;"
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    iput-object p3, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    iput-object p4, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 284
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$3;, "Lcom/vkcoffee/android/data/PurchasesManager$3;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    check-cast v0, Lcom/vkcoffee/android/data/PurchasesManager$Product;

    invoke-interface {v0}, Lcom/vkcoffee/android/data/PurchasesManager$Product;->getPrice()I

    move-result v0

    invoke-static {v1, v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$600(Lcom/vkcoffee/android/data/PurchasesManager;I)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/data/PurchasesManager$Result;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$3;, "Lcom/vkcoffee/android/data/PurchasesManager$3;"
    const/4 v2, 0x0

    .line 265
    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v1}, Lcom/vkcoffee/android/data/PurchasesManager;->access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 267
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 272
    :cond_1
    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->success:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->access$402(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/PurchasesManager;->access$502(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/orm/Product;)Lcom/vkcoffee/android/data/orm/Product;

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/data/orm/Product;->afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$onSuccess:Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$3;->val$product:Lcom/vkcoffee/android/data/orm/Product;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 280
    :cond_2
    return-void

    .line 268
    :cond_3
    iget-object v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_message:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 262
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$3;, "Lcom/vkcoffee/android/data/PurchasesManager$3;"
    check-cast p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/PurchasesManager$3;->success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    return-void
.end method
