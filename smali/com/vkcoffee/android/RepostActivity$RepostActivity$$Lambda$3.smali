.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;
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
    name = "RepostActivity$$Lambda$3"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;

.field private final arg$2:I

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p2, "i"    # I
    .param p3, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 370
    iput p2, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$2:I

    .line 371
    iput-object p3, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$3:Landroid/widget/EditText;

    .line 372
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;
    .param p1, "i"    # I
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 375
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;-><init>(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    iget v1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/RepostActivity;->lambda$repostWithComment$662(ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V

    .line 380
    return-void
.end method
