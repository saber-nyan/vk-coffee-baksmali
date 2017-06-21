.class Lcom/vkcoffee/android/activities/SignupActivity$3$1;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/activities/SignupActivity$3;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/activities/SignupActivity$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/activities/SignupActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/activities/SignupActivity$3;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3$1;->this$1:Lcom/vkcoffee/android/activities/SignupActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3$1;->this$1:Lcom/vkcoffee/android/activities/SignupActivity$3;

    iget-object v1, v1, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const-class v2, Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity$3$1;->this$1:Lcom/vkcoffee/android/activities/SignupActivity$3;

    iget-object v2, v2, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/activities/SignupActivity;->access$300(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity$3$1;->this$1:Lcom/vkcoffee/android/activities/SignupActivity$3;

    iget-object v1, v1, Lcom/vkcoffee/android/activities/SignupActivity$3;->this$0:Lcom/vkcoffee/android/activities/SignupActivity;

    const/16 v2, 0xcb

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method
