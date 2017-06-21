.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/RepostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepostActivity$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 388
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 391
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;-><init>(Lcom/vkcoffee/android/RepostActivity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$663(Landroid/content/DialogInterface;I)V

    .line 396
    return-void
.end method
