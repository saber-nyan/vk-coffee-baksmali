.class Lcom/vkcoffee/android/TransientAuthActivity$2$2;
.super Ljava/lang/Object;
.source "TransientAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/TransientAuthActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

.field final synthetic val$onDismiss:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity$2;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/TransientAuthActivity$2;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iput-object p2, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->val$onDismiss:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->val$onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->val$onDismiss:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v0, v0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$2$2;->this$1:Lcom/vkcoffee/android/TransientAuthActivity$2;

    iget-object v0, v0, Lcom/vkcoffee/android/TransientAuthActivity$2;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/TransientAuthActivity;->finish()V

    goto :goto_0
.end method
