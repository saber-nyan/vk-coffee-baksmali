.class Lcom/vkcoffee/android/ConfirmActionActivity$1;
.super Ljava/lang/Object;
.source "ConfirmActionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ConfirmActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ConfirmActionActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ConfirmActionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ConfirmActionActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ConfirmActionActivity$1;->this$0:Lcom/vkcoffee/android/ConfirmActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ConfirmActionActivity$1;->this$0:Lcom/vkcoffee/android/ConfirmActionActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ConfirmActionActivity;->finish()V

    .line 40
    return-void
.end method
