.class Lcom/vkcoffee/android/MAC$12;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$12;->val$activity:Landroid/app/Activity;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 741
    invoke-static {}, Lcom/vkcoffee/android/MAC;->access$4()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 742
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V

    .line 743
    return-void
.end method
