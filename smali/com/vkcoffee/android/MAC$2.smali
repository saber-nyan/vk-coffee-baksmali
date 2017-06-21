.class Lcom/vkcoffee/android/MAC$2;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$2;->val$activity:Landroid/app/Activity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$2;->val$activity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/MAC;->loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method
