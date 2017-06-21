.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/RepostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepostActivity$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 404
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 407
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;-><init>(Lcom/vkcoffee/android/RepostActivity;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$664(Landroid/content/DialogInterface;)V

    .line 412
    return-void
.end method
