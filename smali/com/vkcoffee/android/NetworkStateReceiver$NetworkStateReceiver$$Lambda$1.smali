.class public Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;
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
    name = "NetworkStateReceiver$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/NetworkStateReceiver;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/NetworkStateReceiver;)V
    .locals 0
    .param p1, "networkStateReceiver"    # Lcom/vkcoffee/android/NetworkStateReceiver;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;->arg$1:Lcom/vkcoffee/android/NetworkStateReceiver;

    .line 441
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/NetworkStateReceiver;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "networkStateReceiver"    # Lcom/vkcoffee/android/NetworkStateReceiver;

    .prologue
    .line 444
    new-instance v0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;-><init>(Lcom/vkcoffee/android/NetworkStateReceiver;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;->arg$1:Lcom/vkcoffee/android/NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/NetworkStateReceiver;->lambda$onReceive$652()V

    .line 449
    return-void
.end method
