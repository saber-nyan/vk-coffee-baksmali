.class Lcom/vkcoffee/android/TransientAuthActivity$1;
.super Landroid/app/ProgressDialog;
.source "TransientAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/TransientAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/TransientAuthActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/TransientAuthActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity$1;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity$1;->this$0:Lcom/vkcoffee/android/TransientAuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->access$002(Lcom/vkcoffee/android/TransientAuthActivity;Z)Z

    .line 60
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    return-void
.end method
