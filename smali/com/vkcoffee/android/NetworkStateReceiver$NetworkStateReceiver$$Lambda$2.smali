.class public Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/NetworkStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStateReceiver$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;->arg$1:Landroid/content/Context;

    .line 456
    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    new-instance v0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;->arg$1:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/NetworkStateReceiver;->lambda$updateInfo$653(Landroid/content/Context;)V

    .line 464
    return-void
.end method
