.class public Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;
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
    name = "AuthActivity$$Lambda$4"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0
    .param p1, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    .line 370
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "authActivity"    # Lcom/vkcoffee/android/AuthActivity;

    .prologue
    .line 373
    new-instance v0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;->arg$1:Lcom/vkcoffee/android/AuthActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AuthActivity;->lambda$authDone$243()V

    .line 378
    return-void
.end method
