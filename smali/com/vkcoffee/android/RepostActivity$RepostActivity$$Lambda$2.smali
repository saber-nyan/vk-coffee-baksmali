.class public Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;
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
    name = "RepostActivity$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/RepostActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/RepostActivity;)V
    .locals 0
    .param p1, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    .line 352
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "repostActivity"    # Lcom/vkcoffee/android/RepostActivity;

    .prologue
    .line 355
    new-instance v0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;-><init>(Lcom/vkcoffee/android/RepostActivity;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;->arg$1:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/RepostActivity;->lambda$onCreate$661(Landroid/content/DialogInterface;)V

    .line 360
    return-void
.end method
