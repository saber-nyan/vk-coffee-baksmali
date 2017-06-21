.class public Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth$$Lambda$3"
.end annotation


# instance fields
.field private final arg$1:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;->arg$1:Landroid/app/Activity;

    .line 466
    return-void
.end method

.method public static lambdaFactory$(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 469
    new-instance v0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;->arg$1:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;->arg$1:Landroid/app/Activity;

    const-class v3, Lcom/vkcoffee/android/AuthActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 474
    return-void
.end method
