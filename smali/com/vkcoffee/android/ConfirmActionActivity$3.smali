.class Lcom/vkcoffee/android/ConfirmActionActivity$3;
.super Ljava/lang/Object;
.source "ConfirmActionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 22
    iput-object p1, p0, Lcom/vkcoffee/android/ConfirmActionActivity$3;->this$0:Lcom/vkcoffee/android/ConfirmActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ConfirmActionActivity$3;->this$0:Lcom/vkcoffee/android/ConfirmActionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ConfirmActionActivity;->access$000(Lcom/vkcoffee/android/ConfirmActionActivity;Z)V

    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ConfirmActionActivity$3;->this$0:Lcom/vkcoffee/android/ConfirmActionActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ConfirmActionActivity;->finish()V

    .line 27
    return-void
.end method
