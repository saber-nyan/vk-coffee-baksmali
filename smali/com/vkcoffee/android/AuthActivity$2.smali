.class Lcom/vkcoffee/android/AuthActivity$2;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$2;->this$0:Lcom/vkcoffee/android/AuthActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$2;->this$0:Lcom/vkcoffee/android/AuthActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V

    .line 98
    return-void
.end method
