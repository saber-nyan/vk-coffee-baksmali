.class public Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthActivity$$Lambda$5"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    .line 387
    iput-object p2, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;->arg$2:Landroid/content/Intent;

    .line 388
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    new-instance v0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;-><init>(Lcom/vkcoffee/android/AuthActivity;Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;->arg$2:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AuthActivity;->lambda$onActivityResult$244(Landroid/content/Intent;)V

    .line 396
    return-void
.end method
