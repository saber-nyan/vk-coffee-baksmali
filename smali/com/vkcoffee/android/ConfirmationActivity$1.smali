.class Lcom/vkcoffee/android/ConfirmationActivity$1;
.super Ljava/lang/Object;
.source "ConfirmationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ConfirmationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ConfirmationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ConfirmationActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ConfirmationActivity$1;->this$0:Lcom/vkcoffee/android/ConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/ConfirmationActivity;->result:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/ConfirmationActivity;->ready:Z

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ConfirmationActivity$1;->this$0:Lcom/vkcoffee/android/ConfirmationActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ConfirmationActivity;->finish()V

    .line 42
    return-void
.end method
