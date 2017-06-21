.class Lcom/vkcoffee/android/data/PurchasesManager$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/PurchasesManager;->consumePurchase(Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
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

.field final synthetic val$id:I

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$service:Lcom/android/vending/billing/IInAppBillingService;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/PurchasesManager;Landroid/content/Context;Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/PurchasesManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$4;, "Lcom/vkcoffee/android/data/PurchasesManager$4;"
    iput-object p1, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    iput-object p3, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iput p4, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$id:I

    iput-object p5, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$orderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$productId:Ljava/lang/String;

    iput-object p7, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$token:Ljava/lang/String;

    iput-object p8, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 384
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$4;, "Lcom/vkcoffee/android/data/PurchasesManager$4;"
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 386
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V
    .locals 8
    .param p1, "r"    # Lcom/vkcoffee/android/data/PurchasesManager$Result;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$4;, "Lcom/vkcoffee/android/data/PurchasesManager$4;"
    const v5, 0x7f08016c

    const/4 v4, 0x0

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->state:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->state:I

    if-gez v0, :cond_2

    iget-boolean v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_fatal:Z

    if-eqz v0, :cond_2

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    iget v2, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$id:I

    iget-object v3, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$orderId:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$productId:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$token:Ljava/lang/String;

    iget-object v6, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/data/PurchasesManager;->access$700(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/android/vending/billing/IInAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    iget v0, p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$token:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$500(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/orm/Product;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/orm/Product;->afterPurchased(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    .line 364
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$400(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$400(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v1}, Lcom/vkcoffee/android/data/PurchasesManager;->access$500(Lcom/vkcoffee/android/data/PurchasesManager;)Lcom/vkcoffee/android/data/orm/Product;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager;->access$402(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;)Lcom/vkcoffee/android/data/PurchasesManager$OnSuccessListener;

    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/PurchasesManager;->access$502(Lcom/vkcoffee/android/data/PurchasesManager;Lcom/vkcoffee/android/data/orm/Product;)Lcom/vkcoffee/android/data/orm/Product;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_0

    .line 370
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PurchasesManager"

    const-string/jumbo v1, "Error during #consumePurchase"

    invoke-static {v0, v1, v7}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 376
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->this$0:Lcom/vkcoffee/android/data/PurchasesManager;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PurchasesManager;->access$300(Lcom/vkcoffee/android/data/PurchasesManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    iget-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$4;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    .local p0, "this":Lcom/vkcoffee/android/data/PurchasesManager$4;, "Lcom/vkcoffee/android/data/PurchasesManager$4;"
    check-cast p1, Lcom/vkcoffee/android/data/PurchasesManager$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/PurchasesManager$4;->success(Lcom/vkcoffee/android/data/PurchasesManager$Result;)V

    return-void
.end method
