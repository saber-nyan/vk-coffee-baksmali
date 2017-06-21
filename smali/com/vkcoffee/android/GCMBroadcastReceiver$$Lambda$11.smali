.class final synthetic Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;->arg$2:Landroid/os/Bundle;

    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;Landroid/os/Bundle;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;->arg$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$null$634(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void
.end method
