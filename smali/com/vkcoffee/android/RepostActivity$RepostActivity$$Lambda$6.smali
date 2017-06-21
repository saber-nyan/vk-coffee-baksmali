.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/RepostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepostActivity$$Lambda$6"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 422
    iput-object p2, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;->arg$2:Landroid/widget/EditText;

    .line 423
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnShowListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 426
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;-><init>(Lcom/vkcoffee/android/RepostActivity;Landroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$665(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    .line 431
    return-void
.end method
